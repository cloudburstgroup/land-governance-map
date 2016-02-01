<?php
require_once("config.php");

$has_data = 0;
$is_loaded = 0;
$PROGRAM = Array();  // Holds all of the program data from the database.

// Check first to see if there is a program_id.
//
if (isset($_REQUEST['program_id'])) {
  $program_id = sprintf ("%d", $_REQUEST['program_id']);
  // If there is a program_id, but it's 0, we are editing.
  //
  if ($program_id > 0) {
    $is_editing = 1;
    if (isset($_REQUEST['is_loaded'])) { $is_loaded = 1; }

    // Only load the information from the database again if this is 
    // the first time this form was loaded.  Otherwise we use the
    // form variables.
    //
    if (!$is_loaded) {
      // Make sure this program_id exists in the database.
      //
      require_once("load_program.php");
      $PROGRAM = f_loadProgram($program_id);
      if (!isset($PROGRAM['program_id'])) {
        header('Location: index.php');
        die();
      }
      $has_data = 1;
    }
  } else {
    header('Location: index.php');
    die();  
  }
}

$section_1_validated = isset($_REQUEST['section_1_validated']) ? $_REQUEST['section_1_validated'] : 0;
$section_2_validated = isset($_REQUEST['section_2_validated']) ? $_REQUEST['section_2_validated'] : 0;
$section_3_validated = isset($_REQUEST['section_3_validated']) ? $_REQUEST['section_3_validated'] : 0;
$section_4_validated = isset($_REQUEST['section_4_validated']) ? $_REQUEST['section_4_validated'] : 0;

// If saving, load the save code.
//
if (isset($_REQUEST['section_save_this']) || isset($_REQUEST['section_save_next'])) {
  include ("landgov_save.php");
}

?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Land Governance Entry Form - <?php if ($is_editing) { echo "Edit Mode"; } else { echo "Add Mode"; } ?></title>
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
<?php if ($is_editing) { ?>
 | <a href="javascript:f_viewProgram(<?php echo $program_id; ?>);">Cancel Editing</a> 
<?php } ?>
(Any unsaved changes will be lost)</p>

<script language="JavaScript">

var goto_section_1_complete = <?php echo $section_1_validated; ?>;
var goto_section_2_complete = <?php echo $section_2_validated; ?>;
var goto_section_3_complete = <?php echo $section_3_validated; ?>;
var goto_section_4_complete = <?php echo $section_4_validated; ?>;

function f_viewProgram(p) {
  $("#view_program_id").val(p);
  $('#viewProgramForm').submit();
}

function preparePage(s) {
  showSection(s);
}

function showSection(s) {
  if (s == 1) {
    $("#section_wrapper_2").hide();
    $("#section_wrapper_3").hide();
    $("#section_wrapper_4").hide();
    $("#section_wrapper_1").show();
    $("#section_title").text("Section 1 - Donor/Development Agency Information");
    $("#goto_section_2").removeClass("goto_section_on");
    $("#goto_section_3").removeClass("goto_section_on");
    $("#goto_section_4").removeClass("goto_section_on");
    $("#goto_section_1").addClass("goto_section_on");
    $("#section_save_this").attr('value', 'Validate Section 1');
    $("#section_save_next").attr('value', 'Validate and Continue to Section 2');
  } else if (s == 2) {
    $("#section_wrapper_1").hide();
    $("#section_wrapper_3").hide();
    $("#section_wrapper_4").hide();
    $("#section_wrapper_2").show();
    $("#section_title").text("Section 2 - Program/Activity Information");
    $("#goto_section_1").removeClass("goto_section_on");
    $("#goto_section_3").removeClass("goto_section_on");
    $("#goto_section_4").removeClass("goto_section_on");
    $("#goto_section_2").addClass("goto_section_on");
    $("#section_save_this").attr('value', 'Validate Section 2');
    $("#section_save_next").attr('value', 'Validate and Continue to Section 3');
  } else if (s == 3) {
    $("#section_wrapper_1").hide();
    $("#section_wrapper_2").hide();
    $("#section_wrapper_4").hide();
    $("#section_wrapper_3").show();
    $("#section_title").text("Section 3 - Voluntary Guidelines");
    $("#goto_section_1").removeClass("goto_section_on");
    $("#goto_section_2").removeClass("goto_section_on");
    $("#goto_section_4").removeClass("goto_section_on");
    $("#goto_section_3").addClass("goto_section_on");
    $("#section_save_this").attr('value', 'Validate Section 3');
    $("#section_save_next").attr('value', 'Validate and Continue to Section 4');
  } else if (s == 4) {
    $("#section_wrapper_1").hide();
    $("#section_wrapper_2").hide();
    $("#section_wrapper_3").hide();
    $("#section_wrapper_4").show();
    $("#section_title").text("Section 4 - Supplemental Information");
    $("#goto_section_1").removeClass("goto_section_on");
    $("#goto_section_2").removeClass("goto_section_on");
    $("#goto_section_3").removeClass("goto_section_on");
    $("#goto_section_4").addClass("goto_section_on");
    $("#section_save_this").attr('value', 'Validate Section 4');
    $("#section_save_next").attr('value', 'Save and Finish');
  }

  if (window.goto_section_1_complete) {
    $("#goto_section_1").addClass("goto_section_complete");
  }
  if (window.goto_section_2_complete) {
    $("#goto_section_2").addClass("goto_section_complete");
  }
  if (window.goto_section_3_complete) {
    $("#goto_section_3").addClass("goto_section_complete");
  }
  if (window.goto_section_4_complete) {
    $("#goto_section_4").addClass("goto_section_complete");
  }
}
</script>

<form method="post" accept-charset="UTF-8">
<?php if ($is_editing) { ?>
<input type="hidden" name="is_editing" value="1">
<input type="hidden" name="program_id" value="<?php echo $program_id; ?>">
<input type="hidden" name="is_loaded" value="1">
<?php } ?>
<input type="hidden" name="section_1_validated" value="<?php echo $section_1_validated; ?>">
<input type="hidden" name="section_2_validated" value="<?php echo $section_2_validated; ?>">
<input type="hidden" name="section_3_validated" value="<?php echo $section_3_validated; ?>">
<input type="hidden" name="section_4_validated" value="<?php echo $section_4_validated; ?>">
<div class="section_title_wrapper"><h1 id="section_title">Section 1 - Donor/Development Agency Information</h1></div>
<div class="section_navigation">
<div class="goto_section" id="goto_section_1" onClick="showSection(1);">1</div>
<div class="goto_section" id="goto_section_2" onClick="showSection(2);">2</div>
<div class="goto_section" id="goto_section_3" onClick="showSection(3);">3</div>
<div class="goto_section" id="goto_section_4" onClick="showSection(4);">4</div>
</div>

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
<h2>This program/activity is funded by:</h2>
<div class="section_instructions">
Required. Select as many as are applicable.
</div>
<div class="section_options">
<?php
$selectSQL = "select funder_id, name, username from funder where status ='A' order by name";
$Result1 = $mysqli->query($selectSQL);
$rows = $Result1->num_rows;
$rows_per_col = sprintf ("%d", floor($rows / 3));

// Add one if there is a remainder.  This will cause the last column to have less rows
// than the other columns.  This is the effect that we would want (vs. the last column)
// having more rows.
//
if (($rows % 3) != 0) { $rows_per_col++; }
$current_row_count = 0;
while ($row = $Result1->fetch_assoc()) {
  $checked = '';
  $disabled = '';
  if ($has_data) {
    if (isset($_REQUEST['funder_id']) && in_array($row['funder_id'], array_values($_REQUEST['funder_id']))) {
      $checked = 'CHECKED';
    }
  }
  if ($logged_in_user == $row['username']) { $checked = "CHECKED"; $disabled = 'DISABLED'; }
  if ($current_row_count == 0) {
    printf ("<div class=\"section_column_200 float_left\">\n");
  }
  printf ("<div class=\"checkbox_option_text\">");
  printf ("<input class=\"checkbox_option\" %s type=\"checkbox\" %s name=\"funder_id[]\" value=\"%d\">", $disabled, $checked, $row['funder_id']);
  printf ("%s", $row['name']);
  if ($disabled) {
    printf ("<input type=\"hidden\" name=\"funder_id[]\" value=\"%d\">", $row['funder_id']);
  }
  printf ("</div>\n");
  $current_row_count++;
  // If we have printed the right number of rows for this column, close it and restart
  // the counter for the next row.
  //
  if ($current_row_count == $rows_per_col) {
    printf ("</div>\n");
    $current_row_count = 0;
  }
}
if ($current_row_count != 0) {
  printf ("</div>\n");
}
?>
<div class="clear"></div>
</div>

<h2>Donor/Development Agency</h2>
<div class="section_instructions">
Please enter all donor/development agencies separated by a comma. Please use standard English acronyms
whenever possible (e.g. ADA, BTC, DANIDA, AFD, GIZ, BMZ, SIDA, USAID, MCC, etc.). If the donor/development agency is another entity 
(e.g. French Ministry of Foreign Affairs) we recommend using the full title of that organization.
</div>
<div class="section_options">
<div class="section_column_200">
<textarea class="section_textarea" name="input_agencies" id="input_agencies"><?php
if ($is_editing && !$is_loaded) {
  if (isset($PROGRAM['agencies'])) {
    // echo htmlentities($PROGRAM['agencies']);
    echo htmlspecialchars($PROGRAM['agencies']);
  }
} else {
  if (isset($_REQUEST['input_agencies'])) {
    // echo htmlentities($_REQUEST['input_agencies']);
    echo htmlspecialchars($_REQUEST['input_agencies']);
  }
}
?></textarea>
</div>
</div>

<h2>Implementing Entity</h2>
<div class="section_instructions">
Please enter all implementing entities (such as ILC, Kadaster, Landesa, etc.) separated by a comma. Only entities that are not Funding Agencies should be listed here.
</div>
<div class="section_options">
<div class="section_column_200">
<textarea class="section_textarea" name="input_implemented_by" id="input_implemented_by"><?php
if ($is_editing && !$is_loaded) {
  if (isset($PROGRAM['implemented_by'])) {
    // echo htmlentities($PROGRAM['implemented_by']);
    echo htmlspecialchars($PROGRAM['implemented_by']);
  }
} else {
  if (isset($_REQUEST['input_implemented_by'])) {
    // echo htmlentities($_REQUEST['input_implemented_by']);
    echo htmlspecialchars($_REQUEST['input_implemented_by']);
  }
}
?></textarea>
</div>
</div>

</div> <!-- End Section 1 Wrapper -->

<div id="section_wrapper_2">  <!-- Begin Section 2 Wrapper -->
<a name="#input_program_name"></a>
<h2>Program/Activty Name</h2>
<div class="section_options">
<div class="section_column_200">
<input class="section_input" name="input_program_name" id="input_program_name" type="text" maxlength="256" value="<?php
if ($is_editing && !$is_loaded) {   $_REQUEST['input_program_name'] = $PROGRAM['title']; }
if (isset($_REQUEST['input_program_name'])) { echo htmlspecialchars($_REQUEST['input_program_name']); }
?>">
</div>
</div>


<a name="#input_scope_id"></a>
<h2>Geographic Scope</h2>
<div class="section_instructions">
Required. Select one.
</div>
<div class="section_options">
<?php
// The default is single donor, only change this to multi-donor if is_single_donor is set
// and it is set to 0.  In all other cases, it should be 1.
//
$scope_id = Array('1' => '', '2' => '', '3' => '');
if ($is_editing && !$is_loaded) {
  $_REQUEST['scope_id'] = $PROGRAM['scope_id'];
}
if (isset($_REQUEST['scope_id'])) {
  $_REQUEST['scope_id'] = sprintf ("%d", $_REQUEST['scope_id']);
  if (($_REQUEST['scope_id'] > 0) && ($_REQUEST['scope_id'] <= 3)) {
    $scope_id[$_REQUEST['scope_id']] = 'checked';
  }
} else {
  $scope_id[1] = 'checked';
}
?>
<div class="section_column">
<input type="radio" name="scope_id" value="1" <?php echo $scope_id['1']; ?>>Implemented in a single country<br />
<input type="radio" name="scope_id" value="2" <?php echo $scope_id['2']; ?>>Implemented in multiple countries<br />
<input type="radio" name="scope_id" value="3" <?php echo $scope_id['3']; ?>>Implemented globally
</div>
</div>

<a name="input_selected_countries"></a>
<h2>Country</h2>
<div class="section_instructions">
Please select all of the countries where the program is implemented. For global or regional programs, leave this section blank.
</div>
<div class="section_options" id="selected_countries">
</div>
<div class="section_options">
<?php
$selectSQL = "select country_id, country_name from country where status ='A' order by country_name";
$Result1 = $mysqli->query($selectSQL);
$rows = $Result1->num_rows;
$rows_per_col = sprintf ("%d", floor($rows / 4));

$selected_countries = '';

// Add one if there is a remainder.  This will cause the last column to have less rows
// than the other columns.  This is the effect that we would want (vs. the last column)
// having more rows.
//
if (($rows % 4) != 0) { $rows_per_col++; }
$current_row_count = 0;
while ($row = $Result1->fetch_assoc()) {
  $checked = '';
  if ($has_data) {
    if (isset($_REQUEST['country_id']) && in_array($row['country_id'], array_values($_REQUEST['country_id']))) {
      $checked = 'CHECKED';
    }
  }
  if ($current_row_count == 0) {
    printf ("<div class=\"section_column column_quarters float_left\">\n");
  }
  printf ("<div class=\"checkbox_option_text\">");
  printf ("<input class=\"checkbox_option\" type=\"checkbox\" %s id=\"country_checkbox_%d\" name=\"country_id[]\" value=\"%d\">", $checked, $row['country_id'], $row['country_id']);
  printf ("%s", $row['country_name']);
  printf ("</div>\n");
  
  // Create an X box for the selected country section.
  $selected_countries_html = '';
  if ($checked) {
    $selected_countries_html .= $row['country_name'] . "<br />\n";
  }
  $current_row_count++;
  // If we have printed the right number of rows for this column, close it and restart
  // the counter for the next row.
  //
  if ($current_row_count == $rows_per_col) {
    printf ("</div>\n");
    $current_row_count = 0;
  }
}
if ($current_row_count != 0) {
  printf ("</div>\n");
}
?>
<div class="clear"></div>
</div>

<a name="input_selected_regions"></a>
<h2>Region</h2>
<div class="section_instructions">
Please select the region where the program is implemented. For global or regional programs, leave this section blank.
</div>
<div class="section_options">
<?php
$selectSQL = "select region_id, region_name from region where status ='A' order by region_name";
$Result1 = $mysqli->query($selectSQL);
$rows = $Result1->num_rows;
$rows_per_col = sprintf ("%d", floor($rows / 3));

// Add one if there is a remainder.  This will cause the last column to have less rows
// than the other columns.  This is the effect that we would want (vs. the last column)
// having more rows.
//
if (($rows % 3) != 0) { $rows_per_col++; }
$current_row_count = 0;
while ($row = $Result1->fetch_assoc()) {
  $checked = '';
  if ($has_data) {
    if (isset($_REQUEST['region_id']) && in_array($row['region_id'], array_values($_REQUEST['region_id']))) {
      $checked = 'CHECKED';
    }
  }
  if ($current_row_count == 0) {
    printf ("<div class=\"section_column column_thirds float_left\">\n");
  }
  printf ("<div class=\"checkbox_option_text\"><input class=\"checkbox_option\" type=\"checkbox\" %s name=\"region_id[]\" value=\"%d\">%s</div>\n", $checked, $row['region_id'], $row['region_name']);
  $current_row_count++;
  // If we have printed the right number of rows for this column, close it and restart
  // the counter for the next row.
  //
  if ($current_row_count == $rows_per_col) {
    printf ("</div>\n");
    $current_row_count = 0;
  }
}
if ($current_row_count != 0) {
  printf ("</div>\n");
}
?>
<div class="clear"></div>
</div>

<h2>Location</h2>
<div class="section_instructions">
Enter sub-national geographic areas (such as cities, districts, provinces, etc.) where the program is implemented.
</div>
<div class="section_options">
<div class="section_column_200">
<textarea class="section_textarea" name="input_locations" id="input_locations"><?php
if (isset($_REQUEST['input_locations'])) {
  echo htmlspecialchars($_REQUEST['input_locations']);
}
?></textarea>
</div>
</div>

<a name="input_activity_date"></a>
<h2>Program Activity Date Range</h2>
<div class="section_instructions">
Enter start and end month and year.  If activity has not started, enter the anticipated start and end dates.
</div>
<div class="section_options">

<div class="section_column_200">
<div style="width:80px; display:inline-block;">Start Year</div> <input class="section_input" name="input_activity_start_year" id="input_activity_start_year" type="text" maxlength="4" value="<?php
if (isset($_REQUEST['input_activity_start_year']) && ($_REQUEST['input_activity_start_year'] > 0)) {
  echo htmlspecialchars($_REQUEST['input_activity_start_year']);
}
?>">
</div>
<div class="section_column_200">
Month <select class="section_selector" name="input_activity_start_month" id="input_activity_start_month">
<?php
foreach (range(1,12) as $m) {
  $month = sprintf ("%02d", $m);
  $three_char_month = date("M", strtotime('2013' . $month . '01'));
  $star = $selected = '';
  if (isset($_REQUEST['input_activity_start_month']) && ($_REQUEST['input_activity_start_month'] == $month)) {
    $star = '*'; $selected = 'selected';
  }
  printf ("<option value=\"%s\" %s>%s%s</option>\n", $month, $selected, $three_char_month, $star);
}
?>
</select>
</div>

<br />

<div class="section_column_200">
<div style="width:80px; display:inline-block;">End Year</div></a> <input class="section_input" name="input_activity_end_year" id="input_activity_end_year" type="text" maxlength="4" value="<?php
if (isset($_REQUEST['input_activity_end_year']) && ($_REQUEST['input_activity_end_year'] > 0)) {
  echo htmlspecialchars($_REQUEST['input_activity_end_year']);
}
?>">
</div>
<div class="section_column_200">
Month <select class="section_selector" name="input_activity_end_month" id="input_activity_end_month">
<?php
foreach (range(1,12) as $m) {
  $month = sprintf ("%02d", $m);
  $three_char_month = date("M", strtotime('2013' . $month . '01'));
  $star = $selected = '';
  if (isset($_REQUEST['input_activity_end_month']) && ($_REQUEST['input_activity_end_month'] == $month)) {
    $star = '*'; $selected = 'selected';
  }
  printf ("<option value=\"%s\" %s>%s%s</option>\n", $month, $selected, $three_char_month, $star);
}
?>
</select>
</div>

</div>

<a name="#input_program_funding"></a>
<h2>Estimated program funding</h2>
<div class="section_instructions">
Estimated program funding for the life of the program in millions of US dollars. Note: For $725,000, enter 0.725. If a program/activity is not a standalone land governance program but is rather one component of a larger program, please estimate the amount of funding going only toward the land governance aspect of the program. Please use US dollars (at the current exchange rate).
</div>
<div class="section_options">
<div class="section_column">
<input class="section_input" name="input_program_funding" id="input_program_funding" type="text" maxlength="16" value="<?php
if (isset($_REQUEST['input_program_funding']) && ($_REQUEST['input_program_funding'] > 0)) {
  echo htmlspecialchars($_REQUEST['input_program_funding']);
}
?>">
(in millions of US dollars)</div> 
</div>


<h2>Summary</h2>
<div class="section_instructions">
Please provide a brief summary statement of program activities and objectives (50 - 200 words).
</div>
<div class="section_options">
<div class="section_column_200">
<textarea class="section_textarea" id="input_summary" name="input_summary"><?php
if (isset($_REQUEST['input_summary'])) {
  echo htmlspecialchars($_REQUEST['input_summary']);
}
?></textarea>
</div>
</div>

</div> <!-- End Section 2 Wrapper -->

<div id="section_wrapper_3">  <!-- Begin Section 3 Wrapper -->
<div class="section_instructions">
Please check the paragraphs of the Voluntary Guidelines that are supported by program activities. Check all that apply.<br />
Click &rarr; to show subparts; Click &darr; to hide subparts.
</div>

<div class="section_options">
<?php
$openedPart = 0;
$cached_vg_part_id = '';
$selectSQL = "select vgp.vg_part_id, vgp.title as vg_part_title, vgs.vg_section_id, vgs.title as section_title " . 
  "from vg_part vgp, vg_section vgs where vgp.vg_part_id = vgs.vg_part_id " .
  "order by vgp.vg_part_id, FLOOR(vgs.vg_section_id), vgs.vg_section_id";
// var_dump($selectSQL);
$Result1 = $mysqli->query($selectSQL);
while ($row = $Result1->fetch_assoc()) {
  if (!$cached_vg_part_id || ($cached_vg_part_id != $row['vg_part_id'])) {
    if ($openedPart) { echo "</div>"; }
    printf ("<div class=\"vg_arrow\" id=\"vg_arrow_%s\" onClick=\"f_togglePart('%s');\">&rarr;</div>\n", $row['vg_part_id'], $row['vg_part_id']);
    printf ("<div class=\"section_column vg_part\" onClick=\"f_togglePart('%s');\">Part %s: %s</div><div class=\"section_column vg_part_selected\" id=\"vg_part_%s_selected\"></div><br />\n",
      $row['vg_part_id'], $row['vg_part_id'], $row['vg_part_title'], $row['vg_part_id']);
    $cached_vg_part_id = $row['vg_part_id'];
    printf ("<div id=\"part_%s_subparts\" style=\"display:none;\">", $row['vg_part_id']);
    $openedPart = 1;
  }
  $checked = '';
  if ($has_data) {
    $checkboxKey = $row['vg_part_id'].'_'.$row['vg_section_id'];
    if (isset($_REQUEST['vg']) && in_array($checkboxKey, array_values($_REQUEST['vg']))) {
      $checked = 'CHECKED';
    }
  }

  printf ("<div class=\"section_column_200 vg_section_id\">");
  printf ("<input onChange=\"javascript: f_updateVGs(this);\" name=\"vg[]\" id=\"vg[]\" value=\"%s_%s\" type=\"checkbox\" %s>",
    $row['vg_part_id'], $row['vg_section_id'], $checked);
  echo $row['vg_section_id'];
  printf ("</div><br />\n");
  printf ("<div class=\"section_column vg_section_title\">%s</div>\n", $row['section_title']);
  printf ("<div style=\"height:1px\"></div>\n");
}
if ($openedPart) {
  echo "</div>\n";
}

?>
<script language="JavaScript">
function f_togglePart(p) {
  var subPartDiv = 'part_'+p+'_subparts';
  var partArrowDiv = 'vg_arrow_'+p;
  if($('#'+subPartDiv).css('display') == 'none'){ 
     $('#'+subPartDiv).show('slow');
     $('#'+partArrowDiv).html('&darr;');
  } else { 
     $('#'+subPartDiv).hide('slow'); 
     $('#'+partArrowDiv).html('&rarr;');
  }
}

function f_updateVGs(c) {
  var sectionPart = c.value;
  sectionPart = sectionPart.substr(0, sectionPart.indexOf('_'));

  var subPartPrefix = c.value;
  subPartPrefix = subPartPrefix.substr(subPartPrefix.indexOf('_')+1);
  if (subPartPrefix.indexOf('.') > 0) {
    subPartPrefix = subPartPrefix.substr(0, subPartPrefix.indexOf('.'));
  }
  // alert(sectionPart + ' ' + subPartPrefix);

  f_updateVGPartCount(sectionPart);
}

function f_updateVGPartCount(sp) {
  // Put the number of selected items into the vg_part_%s_selected div.
  //
  var vgPartSelectionDiv = 'vg_part_' + sp + '_selected';
 
  // Count the number of checked boxes that match the sectionPart.
  //
  var sList = "";
  var iPartChecked = 0;
  $('input[type=checkbox]').each(function () {
    var sValue = this.value;
    if (sValue.indexOf(sp+'_') == 0) {
      iPartChecked = iPartChecked + parseInt(this.checked ? "1" : "0");
    }    
  });
  if (iPartChecked > 0) {
    $('#'+vgPartSelectionDiv).html('(' + iPartChecked + ')');
  } else {
    $('#'+vgPartSelectionDiv).html('');
  }
}
</script>
</div>
</div> <!-- Begin Section 3 Wrapper -->

<script language="JavaScript">
f_updateVGPartCount(2);
f_updateVGPartCount(3);
f_updateVGPartCount(4);
f_updateVGPartCount(5);
f_updateVGPartCount(6);
f_updateVGPartCount(7);
</script>

<div id="section_wrapper_4">  <!-- Begin Section 4 Wrapper -->
<h2>Program Website</h2>
<div class="section_instructions">
Provide a link to the program website or other source of relevant information if available.
</div>
<div class="section_options">
<div class="section_column_200">
<input class="section_input poc_input_url" type="text" maxlength="128"
  name="input_program_url" id="input_program_url" 
  value="<?php if (isset($_REQUEST['input_program_url'])) { echo htmlspecialchars($_REQUEST['input_program_url']); } ?>"></div>
</div>

<h2>Point of Contact</h2>
<div class="section_options">
<div class="section_column_200">Name:</div>
<div class="section_column_200"><input type="text" maxlength="128"
  class="section_input poc_input" name="input_program_poc_name" id="input_program_poc_name"
  value="<?php if (isset($_REQUEST['input_program_poc_name'])) { echo htmlspecialchars($_REQUEST['input_program_poc_name']); } ?>"></div>
<br />
<div class="section_column_200">Organization:</div>
<div class="section_column_200"><input type="text" maxlength="128"
  class="section_input poc_input" name="input_program_poc_organization" id="input_program_poc_organization"
  value="<?php if (isset($_REQUEST['input_program_poc_organization'])) { echo htmlspecialchars($_REQUEST['input_program_poc_organization']); } ?>"></div>
<br />
<div class="section_column_200">Email Address:</div>
<div class="section_column_200"><input type="text" maxlength="128"
  class="section_input poc_input" name="input_program_poc_email" id="input_program_poc_email"
  value="<?php if (isset($_REQUEST['input_program_poc_email'])) { echo htmlspecialchars($_REQUEST['input_program_poc_email']); } ?>"></div>
<br />
<div class="section_column_200">Phone Number:</div>
<div class="section_column_200"><input type="text" maxlength="128"
  class="section_input poc_input" name="input_program_poc_phone" id="input_program_poc_phone"
  value="<?php if (isset($_REQUEST['input_program_poc_phone'])) { echo htmlspecialchars($_REQUEST['input_program_poc_phone']); } ?>"></div>
</div>
</div>

<!--
<h2>Supplemental Documents</h2>
<div class="section_instructions">
Attach any supplemental documents related to this program.
</div>
<div class="section_options">
<input class="poc_input_supdoc" id="input_program_supdoc" type="file">
</div>
-->
</div> <!-- Begin Section 4 Wrapper -->

<div class="section_end">
<input class="section_save_button" name="section_save_this" id="section_save_this" type="submit" value="Validate Section">
<input class="section_save_button" name="section_save_next" id="section_save_next" type="submit" value="Validate Section &amp; Continue">
</div>

</form>

<form id="viewProgramForm" method="POST" action="view.php">
<input type="hidden" name="program_id" id="view_program_id" value="">
</form>

</body>
<?php
$mysqli->close();
?>
</html>