<?php
require_once("config.php");

$has_data = 0;
$PROGRAM = Array();  // Holds all of the program data from the database.

// Check first to see if there is a program_id.
//
if (isset($_REQUEST['program_id'])) {
  $program_id = sprintf ("%d", $_REQUEST['program_id']);

  // No valid program ID, so kick us back out to the main index page.
  //
  if ($program_id <= 0) {
    header('Location: index.php');
    die();
  }
}

// Make sure this program_id exists in the database.
//
require_once("load_program.php");
$PROGRAM = f_loadProgram($program_id);
if (!isset($PROGRAM['program_id'])) {
  header('Location: index.php');
  die();
}

?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Land Governance - View Program - <?php echo htmlspecialchars($PROGRAM['title']); ?></title>
<link rel="stylesheet" type="text/css" href="style.css">
<script src="jquery-1.10.2.min.js"></script>
</head>
<body onLoad="preparePage(<?php echo $section_to_show; ?>);">
<?php
if ($logged_in_user) {
  printf ("<div class=\"login_block\">Logged in as %s.</div>", $logged_in_user);
}
?>
<p><a href="index.php">Return to Index</a>
<?php if (in_array($logged_in_user, $PROGRAM['funder_username']) || $is_admin) { ?>
 | <a href="javascript:f_editProgram();">Edit Program Details</a>
<?php } ?>
</p>

<form method="POST" action="program.php" id="editProgramForm">
<input type="hidden" name="program_id" value="<?php echo $program_id; ?>">
</form>

<script language="JavaScript">

function preparePage() {
  $("#section_wrapper_1").show();
  $("#section_wrapper_2").show();
  $("#section_wrapper_3").show();
  $("#section_wrapper_4").show();
}

function f_editProgram() {
  $('#editProgramForm').submit();
}

</script>

<?php
if (isset($errors) && count($errors)) {
  echo "<div id=\"errors\" class=\"errors\">\n";
  echo "<b>The following errors were encountered while trying to save this program:</b><br /><br />\n";
  echo "<div class=\"section_options\">\n";
  foreach ($errors as $e) {
    printf ("%s<br />\n", $e);
  }
  echo "</div>\n";
  echo "</div>\n";
}
?>

<div id="section_wrapper_1">  <!-- Begin Section 1 Wrapper -->
<h3>This program/activity is funded by:</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['funder_id'])) {
  foreach ($PROGRAM['funder_id'] as $k => $v) {
    printf ("%s<br />\n", htmlspecialchars($v));
  }
}
?>
<div class="clear"></div>
</div>

<h3>Donor/Development Agency</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['agencies'])) {
  echo htmlspecialchars($PROGRAM['agencies']);
}
?>
</div>
</div>

<h3>Implementing Entity</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['implemented_by'])) {
  echo htmlspecialchars($PROGRAM['implemented_by']);
}
?>
</div>
</div>

</div> <!-- End Section 1 Wrapper -->

<div id="section_wrapper_2">  <!-- Begin Section 2 Wrapper -->
<h3>Program/Activty Name</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['title'])) {
  echo htmlspecialchars($PROGRAM['title']);
}
?>
</div>

<h3>Country</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['country_id'])) {
  foreach ($PROGRAM['country_id'] as $k => $v) {
    printf ("%s<br />\n", htmlspecialchars($v));
  }
}
?>
</div>

<h3>Region</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['region_id'])) {
  foreach ($PROGRAM['region_id'] as $k => $v) {
    printf ("%s<br />\n", htmlspecialchars($v));
  }
}
?>
</div>

<h3>Location</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['locations'])) {
  echo htmlspecialchars($PROGRAM['locations']);
}
?>
</div>

<h3>Program Activity Date Range</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['activity_start_dt'])) {
  if (strcmp($PROGRAM['activity_start_dt'], '0000-00-00')) {
    echo htmlspecialchars($PROGRAM['activity_start_dt']);
  } else {
    echo '<span color="#CCC"><em>unknown</em></span>';
  }
}
?>
 -
<?php
if (isset($PROGRAM['activity_end_dt'])) {
  if (strcmp($PROGRAM['activity_end_dt'], '0000-00-00')) {
    echo htmlspecialchars($PROGRAM['activity_end_dt']);
  } else {
    echo '<span color="#777"><em>unknown</em></span>';
  }
}
?>
</div>

<h3>Funding</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['funding'])) {
  echo '$';
  echo htmlspecialchars($PROGRAM['funding']);
  echo " Million";
}
?>
</div>

<h3>Summary</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['summary'])) {
  echo htmlspecialchars($PROGRAM['summary']);
}
?>
</div>

</div> <!-- End Section 2 Wrapper -->

<div id="section_wrapper_3">  <!-- Begin Section 3 Wrapper -->

<h3>Voluntary Guidelines</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['vg'])) {
  foreach ($PROGRAM['vg'] as $k => $v) {
    printf ("%s - %s<br />\n", htmlspecialchars($k), htmlspecialchars($v));
  }
}
?>
</div>

</div> <!-- Begin Section 3 Wrapper -->

<div id="section_wrapper_4">  <!-- Begin Section 4 Wrapper -->

<h3>Program Website</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['program_url'])) {
  echo htmlspecialchars($PROGRAM['program_url']);
}
?>
</div>

<h3>Point of Contact</h3>
<div class="section_options">
<?php
if (isset($PROGRAM['poc_name'])) { echo htmlspecialchars($PROGRAM['poc_name']) . '<br />'; }
if (isset($PROGRAM['poc_organization'])) { echo htmlspecialchars($PROGRAM['poc_organization']) . '<br />'; }
if (isset($PROGRAM['poc_email'])) { echo htmlspecialchars($PROGRAM['poc_email']) . '<br />'; }
if (isset($PROGRAM['poc_phone'])) { echo htmlspecialchars($PROGRAM['poc_phone']) . '<br />'; }
?>
</div>

<!--
<h3>Supplemental Documents</h3>
<div class="section_instructions">
Attach any supplemental documents related to this program.
</div>
<div class="section_options">
<input class="poc_input_supdoc" id="input_program_supdoc" type="file">
</div>
-->
</div> <!-- Begin Section 4 Wrapper -->

</body>
<?php
$mysqli->close();
?>
</html>