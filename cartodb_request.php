<html>
<style>
.funder_program_block {
  border:1px solid #777;
 padding-left: 10px;
  margin-bottom:20px;
  font-size: 12pt;
  
}
.funder_name_block {
  margin-left: 10px;
  padding-left:10px;
  padding-right:10px;
  float:left;
  background: #FFF;
  margin-top:-12px;
  font-size:18px;
  font-weight:bold;
}
.funder_program_title_block {
   margin-left:10px;
   margin-bottom:10px;
 }
.funder_detail_block {
  margin-left:20px;
  font-size:10pt;
}
.funder_detail_block b {
  color: #444;
}
</style>
<body>
<?php
require_once("config.php");
require_once("cartodb.php");

$fundersNames = Array(
  "funder_aus" => 'Austria',
  "funder_bel" => 'Belgium',
  "funder_den" => 'Denmark',
  "funder_eu"  => 'EU',
  "funder_fao" => 'FAO',
  "funder_fra" => 'France',
  "funder_ger" => 'Germany',
  "funder_net" => 'Netherlands',
  "funder_swe" => 'Sweden',
  "funder_swi" => 'Switzerland',
  "funder_uk"  => 'United Kingdom',
  "funder_us"  => 'United States',
  "funder_wb"  => 'World Bank'
);

// This only takes a cartodb_id and returns stuff about it that we can use.
//
$is_print = sprintf ("%d", $_REQUEST['print']);
$cartodb_id = sprintf ("%d", $_REQUEST['cartodb_id']);
$sqlRequest = sprintf ("select * from land_governance where cartodb_id = %d", $cartodb_id);
$s = cartoSQL($sqlRequest);
$obj = json_decode($s);
$country_id = $obj->rows[0]->country_id;

$funders = sprintf ("%s", $_REQUEST['funders']);

// Grab all of the program data from the database for this country_id and the selected funders, then return it.
//
$sqlRequest = sprintf ("select f.name as funder_name, c.country_name, p.* " .
  "from program p, country c, funder f, program_country pc, program_funder pf " .
  "where " .
  "  p.program_id = pc.program_id and " .
  "  p.program_id = pf.program_id and " .
  "  pf.funder_id = f.funder_id and " .
  "  pc.country_id = c.country_id and " .
  "  pc.country_id = %d ", $country_id);

if ($country_id == -1) {
  $sqlRequest = "select f.name as funder_name, p.* " .
	"from program p, funder f, program_funder pf " .
	"where " .
	"  p.program_id = pf.program_id and " .
	"  pf.funder_id = f.funder_id and " .
    "  p.scope_id = 3 ";
}

if (isset($_REQUEST['funders']) && (strlen($_REQUEST['funders']) > 0)) {
  $funderString = $_REQUEST['funders'];
  $funderArray = preg_split("/,/", $funderString);
  $funderInString = '';
  $first = 1;
  foreach ($funderArray as $f) {
    if (!$first) { $funderInString .= ","; }
    $funderInString = sprintf ("%s'%s'", $funderInString, $fundersNames[$f]);
    $first = 0;
  }  
  $sqlRequest = sprintf ("%s and f.name in (%s) ", $sqlRequest, $funderInString);
}
$sqlRequest = sprintf ("%s order by funder_name", $sqlRequest);

// echo $sqlRequest;

$Result1 = $mysqli->query($sqlRequest);
$funder = '';
while ($row = $Result1->fetch_assoc()) {
  if (!$funder) {
    if (!$is_print) {
      printf ("<div style=\"float:right; margin-right:20px; font-size:12pt\">");
      printf ("<a target=\"_blank\" href=\"cartodb_request.php?cartodb_id=%d&print=1\">Print</a></div>", $cartodb_id);
    }
    printf ("<h2 style=\"margin-top:0px;\">%s</h2>", $row['country_name']);
  }
  if (strcmp($funder, $row['funder_name'])) {
    if (strlen($funder) > 0) {
      printf ("</div>\n", $row['country_name']);
    }  
    $funder = $row['funder_name'];
    printf ("<div class=\"funder_program_block\">");
    printf ("<div class=\"funder_name_block\">");
    printf ("%s", $funder);
    printf ("</div>\n");
    printf ("<div style=\"clear:both; height:1px;\"></div>");
  }
  printf ("<div class=\"funder_program_title_block\">");
  printf ("<div style=\"\"><b>%s</b></div>", $row['title']);
  printf ("<div style=\"clear:both; height:1px;\"></div>");
 
  // Donor Agencies
  //
  if (strlen($row['agencies']) > 0) {
    printf ("<div class=\"funder_detail_block\"><b>Donor/Development Agency:</b> ");
    printf ("%s", $row['agencies']);
    printf ("</div>");
  }  

  // Implementing Agency
  //
  if (strlen($row['implemented_by']) > 0) {
    printf ("<div class=\"funder_detail_block\"><b>Implementing Agency:</b> ");
    printf ("%s", $row['implemented_by']);
    printf ("</div>");
  }  

  // Program Start Date
  //
  if (strcmp($row['activity_start_dt'], '0000-00-00')) {
    printf ("<div class=\"funder_detail_block\"><b>Program Start Date:</b> ");
    printf ("%s", substr($row['activity_start_dt'], 0, 4));
    printf ("</div>");
  }  

  // Program End Date
  //
  if (strcmp($row['activity_end_dt'], '0000-00-00')) {
    printf ("<div class=\"funder_detail_block\"><b>Program End Date:</b> ");
    printf ("%s", substr($row['activity_end_dt'], 0, 4));
    printf ("</div>");
  }  

  // Project Funding
  //
  if ($row['funding'] > 0) {
    printf ("<div class=\"funder_detail_block\"><b>Project Funding:</b> ");
    printf ("\$%sM", $row['funding']);
    printf ("</div>");
  }  
 
  // Location
  //
  if (strlen($row['summary']) > 0) {
    printf ("<div class=\"funder_detail_block\"><b>Location:</b> ");
    printf ("%s", $row['locations']);
    printf ("</div>");
  }   

  // Summary
  //
  if (strlen($row['summary']) > 0) {
    printf ("<div class=\"funder_detail_block\"><b>Summary:</b> ");
    printf ("%s", $row['summary']);
    printf ("</div>");
  }  

  // Voluntary Guidelines
  //
  $VGsql = sprintf ("select pvs.vg_part_id, pvs.vg_section_id from program_vg_section pvs where pvs.program_id = %d", $row['program_id']);
  $VGResults = $mysqli->query($VGsql);
  $first = 1;
  while ($VGrow = $VGResults->fetch_assoc()) {
    if ($first) {
      printf ("<div class=\"funder_detail_block\"><b>Voluntary Guidelines:</b> ");
    }
    if (!$first) { echo ", "; }
    printf ("%s.%s", $VGrow['vg_part_id'], $VGrow['vg_section_id']);
    $first = 0;
  }
  if (!$first) {
    printf ("</div>");
  }
  printf ("</div>");
}
printf ("</div>");

?>
</body>
</html>