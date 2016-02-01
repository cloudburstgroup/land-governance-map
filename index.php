<?php
require_once("config.php");
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Land Governance Database</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
</head>
<body>

<?php
if (isset($_REQUEST['delete_submit'])) {
  if (isset($_REQUEST['program_id'])) {
    if (count($_REQUEST['program_id']) > 0) {
      foreach ($_REQUEST['program_id'] as $program_id) {
        f_delete_program($program_id);
      }
    }
  }
}

function f_delete_program($p) {
  global $mysqli;
  
  // Delete program_country
  //
  $deleteSQL = sprintf ("delete from program_country where program_id = %d", $p);
  $Result1 = $mysqli->query($deleteSQL);

  // Delete program_region
  //
  $deleteSQL = sprintf ("delete from program_region where program_id = %d", $p);
  $Result1 = $mysqli->query($deleteSQL);

  // Delete program_funder
  //
  $deleteSQL = sprintf ("delete from program_funder where program_id = %d", $p);
  $Result1 = $mysqli->query($deleteSQL);

  // Delete program_vg records
  //
  $deleteSQL = sprintf ("delete from program_vg_section where program_id = %d", $p);
  $Result1 = $mysqli->query($deleteSQL);

  // Delete program record
  //
  $deleteSQL = sprintf ("delete from program where program_id = %d", $p);
  $Result1 = $mysqli->query($deleteSQL);
}

if ($logged_in_user) {
  printf ("<div class=\"login_block\">Logged in as %s.</div>", $logged_in_user);
}
?>

<?php
if (isset($_REQUEST['r'])) {
  $selectSQL = sprintf ("select m.*, p.* from result_message m, program p where m.program_id = p.program_id and message_id = %d", $_REQUEST['r']);
  $Result1 = $mysqli->query($selectSQL);
  $row = $Result1->fetch_assoc();
  printf ("<div class=\"message_block\">\n");
  printf ("%s View Program Details: &quot;<a href=\"javascript:f_viewProgram(%d);\">%s</a>&quot;<br />",
    $row['message'], $row['program_id'], $row['title']);
  printf ("</div>\n");
}
?>

<p><a href="program.php">Add Program</a></p>

<p><select name="input_funder_id" id="input_funder_id" onChange="f_updateForm();">
<option value="">-- Select a Funder --</option>
<?php
foreach ($FUNDERS as $funder) {
  $star = $selected = '';
  if ($logged_in_user == $funder['username']) {
    if (!isset($_REQUEST['funder_id'])) { $_REQUEST['funder_id'] = $funder['funder_id']; }
  }
  if (isset($_REQUEST['funder_id']) && ($_REQUEST['funder_id'] == $funder['funder_id'])) {
    $star = '*'; $selected = 'selected';
  }
  printf ("<option value=\"%s\" %s>%s %s</option>\n", $funder['funder_id'], $selected, $funder['name'], $star);
}
?>
</select>
</p>

<form method="post">
<table style="border:1px solid #DDD;" cellspacing="0" cellpadding="5">
<?php
$selectSQL = sprintf ("select p.*, f.username, f.funder_id, f.name from program p, funder f, program_funder pf where " .
  "p.program_id = pf.program_id and f.funder_id = pf.funder_id ");
if (isset($_REQUEST['funder_id']) && ($_REQUEST['funder_id'] > 0)) {
  $selectSQL = sprintf ("%s and f.funder_id = %d ", $selectSQL, $_REQUEST['funder_id']);
}
$selectSQL = sprintf ("%s order by activity_start_dt desc", $selectSQL);
$rows_added = 0;
$Result1 = $mysqli->query($selectSQL);
while ($row = $Result1->fetch_assoc()) {
  if ($rows_added == 0) {
    echo "<tr>\n";
    printf ("<td style=\"border-bottom:1px solid #000; text-align:center;\"><b>X</b></td>\n");
    printf ("<td style=\"border-bottom:1px solid #000;\"><b>Funder</b></td>\n");
    printf ("<td style=\"border-bottom:1px solid #000; width: 400px;\"><b>Program</b></td>\n");
    printf ("<td style=\"border-bottom:1px solid #000; width: 200px;\"><b>Funding Agencies</b></td>\n");
    printf ("<td style=\"border-bottom:1px solid #000; width: 150px;\"><b>Country of Implementation</b></td>\n");
    printf ("<td style=\"border-bottom:1px solid #000;\"><b>Funding Start</b></td>\n");
    printf ("<td style=\"border-bottom:1px solid #000;\"><b>Funding End</b></td>\n");
    echo "</tr>\n";
  }
  $funder_display = $FUNDERS[$row['funder_id']]['name'];
  echo "<tr valign=\"top\" style=\"border:1px solid #DDD;\">\n";
  printf ("<td style=\"text-align:center;\">");
  if (($logged_in_user == $row['username']) || $is_admin) {
    printf ("<input type=\"checkbox\" value=\"%d\" name=\"program_id[]\" id=\"program_id[]\">", $row['program_id'] );
  } else {
    printf ("-");
  }
  $country_list = '';
  $countrySQL = sprintf ("select c.country_name from country c, program_country pc where " .
    "pc.country_id = c.country_id and pc.program_id = %d order by c.country_name",
    $row['program_id']);
  $ResultCountry = $mysqli->query($countrySQL);
  while ($rowCountry = $ResultCountry->fetch_assoc()) {
    $country_list .= $rowCountry['country_name'] . ", ";
  }
  if (strlen($country_list) > 0) {
    $country_list = substr($country_list, 0, -2);
  }
  printf ("</td>\n");
  printf ("<td style=\"padding-right: 20px;\">%s</td>\n", $funder_display);
  printf ("<td style=\"padding-right: 20px; width: 400px;\"><a href=\"javascript:f_viewProgram(%d);\">%s</a></td>\n", $row['program_id'], htmlspecialchars($row['title']));
  printf ("<td style=\"padding-right: 20px; width: 200px;\">%s</td>\n", htmlspecialchars($row['agencies']));
  printf ("<td style=\"padding-right: 20px; width: 150px;\">%s</td>\n", htmlspecialchars($country_list));
  printf ("<td style=\"padding-right: 20px;\">%s</td>\n", strcmp($row['activity_start_dt'], '0000-00-00') ? $row['activity_start_dt'] : '-');
  printf ("<td style=\"padding-right: 20px;\">%s</td>\n", strcmp($row['activity_end_dt'], '0000-00-00') ? $row['activity_end_dt'] : '-');
  echo "</tr>\n";
  $rows_added = $rows_added + 1;
}
if (!$rows_added) {
  printf ("<tr><td>No programs found for the selected funder.</td></tr>\n");
}
?>
</table>
<?php if (($logged_in_user == $selected_funder_username) || ($logged_in_user == LANDGOV_ADMIN_USERNAME)) { ?>
<div style="margin-top:10px;"><input type="submit" name="delete_submit" value="Delete selected program(s)"></div>
<?php } ?>
</form>

<form id="filterForm" method="POST">
<input type="hidden" name="funder_id" id="funder_id" value="">
</form>

<form id="viewProgramForm" method="POST" action="view.php">
<input type="hidden" name="program_id" id="view_program_id" value="">
</form>

<script language="JavaScript">

function f_viewProgram(p) {
  $("#view_program_id").val(p);
  $('#viewProgramForm').submit();
}

function f_updateForm() {
  var i = document.getElementById('input_funder_id').selectedIndex;
  var funder_id = document.getElementById('input_funder_id').options[i].value;
  $("#funder_id").val(funder_id);
  $('#filterForm').submit();
}

</script>

</body>
</html>