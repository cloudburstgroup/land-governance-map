<?php
header('Content-Type: text/html; charset=utf-8');
date_default_timezone_set('America/New_York');
$hostname_DB_Con = "localhost";
$database_DB_Con = "REPLACE_WITH_DB_NAME";
$username_DB_Con = "REPLACE_WITH_DB_USERNAME";
$password_DB_Con = "REPLACE_WITH_DB_PASSWORD";

$current_year = date("Y");

$admin_user_name = "REPLACE_WITH_ADMIN_USERNAME"; // Very important to replace this and set a proper username here.

define ("LANDGOV_ADMIN_USERNAME", $admin_user_name);
DEFINE('MIN_START_YEAR', 1990);
DEFINE('MAX_START_YEAR', $current_year+25); // Projects that go 25 years into future.
DEFINE('MIN_END_YEAR', 1990);
DEFINE('MAX_END_YEAR', $current_year+25); // Projects that go 25 years into future.
DEFINE('MODIFIED_STRING_ERROR', 'This value has been modified, please review it before attempting to save.');

$section_to_show = 1;

$tmp_program_id = $program_id = 0;
$is_editing = 0;

/* Open a connection */
$mysqli = new mysqli($hostname_DB_Con, $username_DB_Con, $password_DB_Con, $database_DB_Con);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

$mysqli->set_charset("utf8"); // 2013-10-05: IMPORTANT, MUST BE SET
// echo 'Charset: '.$mysqli->character_set_name();  // charset was: latin1, now utf8

$logged_in_user = '';
if (isset($_SERVER['PHP_AUTH_USER'])) {
  $logged_in_user = $_SERVER['PHP_AUTH_USER'];
}

// There is a reserved username $admin_user_name that unlocked admin functions.
//
$is_admin = 0;
if (strcmp($logged_in_user, $admin_user_name) == 0) {
  $is_admin = 1;
}

$selected_funder_id = '';
$selected_funder_name = '';
$selected_funder_username = '';

$FUNDERS = Array();
$selectSQL = "select * from funder order by name";
$Result1 = $mysqli->query($selectSQL);
while ($row = $Result1->fetch_assoc()) {
  if ($logged_in_user == $row['username']) {
    $selected_funder_id = $row['funder_id'];
    $selected_funder_name = $row['name'];
    $selected_funder_username = $row['username'];
  }
  $FUNDERS[$row['funder_id']]['funder_id'] = $row['funder_id'];
  $FUNDERS[$row['funder_id']]['name'] = $row['name'];
  $FUNDERS[$row['funder_id']]['username'] = $row['username'];
}


?>