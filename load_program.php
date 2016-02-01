<?php

function f_loadProgram($p) {
  global $mysqli;

  $DATA = Array();

  $selectSQL = sprintf ("select * from program where program_id = %d", $p);
  $Result1 = $mysqli->query($selectSQL);
  $row = $Result1->fetch_assoc();
  if (!$row) { return $DATA; }
  
  foreach (array_keys($row) as $field) {
    $DATA[$field] = $row[$field];
  }

  $_REQUEST['input_agencies'] = $DATA['agencies'];
  $_REQUEST['input_implemented_by'] = $DATA['implemented_by'];
  $_REQUEST['input_program_name'] = $DATA['title'];
  $_REQUEST['scope_id'] = $DATA['scope_id'];
  $_REQUEST['input_locations'] = $DATA['locations'];
  $_REQUEST['input_activity_start_year'] = substr($DATA['activity_start_dt'], 0, 4);
  if (strcmp($_REQUEST['input_activity_start_year'], '0000') == 0) { $_REQUEST['input_activity_start_year'] = ''; }
  $_REQUEST['input_activity_start_month'] = substr($DATA['activity_start_dt'], 5, 2);
  $_REQUEST['input_activity_end_year'] = substr($DATA['activity_end_dt'], 0, 4);
  if (strcmp($_REQUEST['input_activity_end_year'], '0000') == 0) { $_REQUEST['input_activity_end_year'] = ''; }
  $_REQUEST['input_activity_end_month'] = substr($DATA['activity_end_dt'], 5, 2);
  $_REQUEST['input_program_funding'] = $DATA['funding'];
  $_REQUEST['input_summary'] = $DATA['summary'];
  $_REQUEST['input_program_poc_name'] = $DATA['poc_name'];
  $_REQUEST['input_program_poc_organization'] = $DATA['poc_organization'];
  $_REQUEST['input_program_poc_email'] = $DATA['poc_email'];
  $_REQUEST['input_program_poc_phone'] = $DATA['poc_phone'];
  $_REQUEST['input_program_url'] = $DATA['program_url'];

  $DATA['funder_id'] = Array();
  $DATA['funder_username'] = Array();
  $selectSQL = sprintf ("select f.* from program_funder pf, funder f where pf.funder_id = f.funder_id and pf.program_id = %d and f.status ='A'", $p);
  $Result1 = $mysqli->query($selectSQL);
  while ($row = $Result1->fetch_assoc()) {
    $DATA['funder_id'][$row['funder_id']] = $row['name'];
    $DATA['funder_username'][] = $row['username'];
    $_REQUEST['funder_id'][] = $row['funder_id'];
  }

  $DATA['country_id'] = Array();
  $selectSQL = sprintf ("select c.* from program_country pc, country c where pc.country_id = c.country_id and pc.program_id = %d and c.status ='A'", $p);
  $Result1 = $mysqli->query($selectSQL);
  while ($row = $Result1->fetch_assoc()) {
    $DATA['country_id'][$row['country_id']] = $row['country_name'];
    $_REQUEST['country_id'][] = $row['country_id'];
  }

  $DATA['region_id'] = Array();
  $selectSQL = sprintf ("select r.* from program_region pr, region r where pr.region_id = r.region_id and pr.program_id = %d and r.status ='A'", $p);
  $Result1 = $mysqli->query($selectSQL);
  while ($row = $Result1->fetch_assoc()) {
    $DATA['region_id'][$row['region_id']] = $row['region_name'];
    $_REQUEST['region_id'][] = $row['region_id'];
  }

  $DATA['vg'] = Array();
  $selectSQL = sprintf ("select vs.* from program_vg_section pv, vg_section vs where " .
    "pv.vg_part_id = vs.vg_part_id and " .
    "pv.vg_section_id = vs.vg_section_id and " .
    "pv.program_id = %d", $p);
  $Result1 = $mysqli->query($selectSQL);
  while ($row = $Result1->fetch_assoc()) {
    $part_section = sprintf ("%s_%s", $row['vg_part_id'], $row['vg_section_id']);
    $DATA['vg'][$part_section] = $row['title'];
    $_REQUEST['vg'][] = $part_section;
  }

  return $DATA;
}

?>