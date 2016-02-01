<?php
require_once("config.php");
require_once("cartodb.php");
?>
<html>
<body>
<?php

$updateCountryTable = 0;
$updateFunderColumns = 1;
$updateDonorPrograms = 0; // Not used.

if ($updateCountryTable) {
  // Get Program Counts from the database by country_code
  //
  $selectSQL = "select * from country";
  $Result1 = $mysqli->query($selectSQL);
  while ($row = $Result1->fetch_assoc()) {
    $cartoUpdateSQL = sprintf ("update land_governance set country_id = %d where iso3 = '%s';", $row['country_id'], $row['country_code']);
    $s = cartoSQL($cartoUpdateSQL);
    echo $s;
  }
}

if ($updateFunderColumns) {
  // Get Program Counts from the database by country_code
  //
  
  $funderColumns['Austria'] = "funder_aus";
  $funderColumns['Belgium'] = "funder_bel";
  $funderColumns['Denmark'] = "funder_den";
  $funderColumns['EU'] = "funder_eu";
  $funderColumns['FAO'] = "funder_fao";
  $funderColumns['France'] = "funder_fra";
  $funderColumns['Germany'] = "funder_ger";
  $funderColumns['Netherlands'] = "funder_net";
  $funderColumns['Sweden'] = "funder_swe";
  $funderColumns['Switzerland'] = "funder_swi";
  $funderColumns['United Kingdom'] = "funder_uk";
  $funderColumns['United States'] = "funder_us";
  $funderColumns['World Bank'] = "funder_wb";

/*
  // Delete the funder information from the land_governance table just in case
  // there are countries that no longer have any funders vs. being updated.
  //
  $updateSQL = "update land_governance set funder_count = 0";
  $comma = ',';
  foreach (array_keys($funderColumns) as $f) {
    $updateSQL = sprintf ("%s%s %s = NULL ", $updateSQL, $comma, $funderColumns[$f]);
    $comma = ',';
  }
  $s = cartoSQL($updateSQL);
  echo $updateSQL . "<br />";
  echo $s . "<br />";

  // Update the individual countries..
  //
  $selectSQL = "select distinct pc.country_id, f.name from program_country pc, program_funder pf, funder f " .
    "where pc.program_id = pf.program_id and f.funder_id = pf.funder_id ";
  $Result1 = $mysqli->query($selectSQL);
  while ($row = $Result1->fetch_assoc()) {
    $cartoUpdateSQL = sprintf ("update land_governance set %s = 1 where country_id = %d;", $funderColumns[$row['name']],
      $row['country_id']);
    $s = cartoSQL($cartoUpdateSQL);
    echo $s . "<br />";
  }
*/

  // Update the global record.  This has country_id = -1 in CartoDB.
  // scope_id = 3 is GLOBAL
  //
  $selectSQL = "select distinct(f.name) as name from program p, program_funder pf, funder f " .
    "where p.program_id = pf.program_id and pf.funder_id = f.funder_id and p.scope_id = 3";
  echo $selectSQL;
  echo "<br />";
  $Result1 = $mysqli->query($selectSQL);
  while ($row = $Result1->fetch_assoc()) {
    $cartoUpdateSQL = sprintf ("update land_governance set %s = 1 where country_id = -1;", $funderColumns[$row['name']]);
    $s = cartoSQL($cartoUpdateSQL);
    echo $s . "<br />";
  }

  $updateSQL = "update land_governance set funder_count = ";
  $comma = '';
  foreach (array_keys($funderColumns) as $f) {
    $updateSQL = sprintf ("%s%s%s", $updateSQL, $comma, $funderColumns[$f]);
    $comma = ' + ';
  }
  $s = cartoSQL($updateSQL);
  echo $updateSQL . "<br />";
  echo $s . "<br />";

}

if ($updateDonorPrograms) {
  // For each donor, we need to update the donor_programs description field with all of the information having to do with
  // each country.
  //

  // Empty the table because we can't have any orphan records
  //
  $cartoUpdateSQL = "delete from donor_programs";
  $s = cartoSQL($cartoUpdateSQL);
  echo $s;

  $selectSQL = "select pc.country_id, c.country_name, f.name as funder_name, pf.funder_id, p.program_id, p.title " .
    "from program p, program_funder pf, funder f, country c, program_country pc " .
    "where " .
    "  pc.country_id = c.country_id and " .
    "  pf.funder_id = f.funder_id and " .
    "  p.program_id = pf.program_id and " .
    "  p.program_id = pc.program_id and " .
    "  pf.program_id = pc.program_id " .
    "order by pf.funder_id, f.name, c.country_name, pc.country_id, p.title";
  $DESCRIPTIONS = Array();
  $Result1 = $mysqli->query($selectSQL);
  while ($row = $Result1->fetch_assoc()) {
    if (!isset($DESCRIPTIONS[$row['country_id']])) {
      $DESCRIPTIONS[$row['country_id']] = Array();
      $DESCRIPTIONS[$row['country_id']]['funder_count'] = 0;
      $DESCRIPTIONS[$row['country_id']]['country_name'] = $row['country_name'];
    }
    if (!isset($DESCRIPTIONS[$row['country_id']]['funders'])) {
      $DESCRIPTIONS[$row['country_id']]['funders'] = Array();
    }
    
    if (!isset($DESCRIPTIONS[$row['country_id']]['funders'][$row['funder_id']])) {
      $DESCRIPTIONS[$row['country_id']]['funder_count'] = $DESCRIPTIONS[$row['country_id']]['funder_count'] + 1;
      $DESCRIPTIONS[$row['country_id']]['funders'][$row['funder_id']] = Array();
      $DESCRIPTIONS[$row['country_id']]['funders'][$row['funder_id']]['name'] = $row['funder_name'];
      $DESCRIPTIONS[$row['country_id']]['funders'][$row['funder_id']]['programs'] = Array();
    }
    $row['title'] = preg_replace("/\"/", "", $row['title']);
    $row['title'] = preg_replace("/\'/", "''", $row['title']);
    $DESCRIPTIONS[$row['country_id']]['funders'][$row['funder_id']]['programs'][] = $row['title'];
  }

  foreach ($DESCRIPTIONS as $country_k => $country_v) {
    $country_id = $country_k;
    $funder_count = $country_v['funder_count'];
    $country_name = $country_v['country_name'];
    $program_string = '';
    foreach ($country_v['funders'] as $cf_k => $cf_v) {
      $funder_id = $cf_k;
      $funder_name = $cf_v['name'];
      foreach ($cf_v['programs'] as $cfp_k => $cfp_v) {
        if (strlen($program_string) > 0) { $program_string .= "<br />"; }
        $program_string .= $cfp_v;  
      }
      $cartoUpdateSQL = sprintf ("insert into donor_programs (country_id, country_name, description, funder_count, funder_id, funder_name) " .
        "values (%d, '%s', '%s', %d, %d, '%s')",
        $country_id, $country_name, $program_string, $funder_count, $funder_id, $funder_name);
       $s = cartoSQL($cartoUpdateSQL);
       echo $s;
    }
  }
}

?>
</body>
</html>