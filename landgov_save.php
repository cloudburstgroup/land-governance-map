<?php

// Setup the data so that we know if this is an update of an existing
// program or if this is a new program that needs to be saved.
//

// Section 1 - Donor/Development Agency Information
//
//   -- is_single_donor (required)
//   -- program_agency (required, 1 to many)
//   -- agencies (optional)
//   -- implemented_by (optional)
//
$show_request = 0;
$save_and_finish = 0;

// Store errors in an array.
//
$errors = Array();

// All of the fields broken down into an array so that we will have a unified way of making sure all
// fields are accounted for.  If it is not in this array, it shouldn't be on the displayed form.
// The fields are broken down by section (1 - 4).
//
$LGFIELDS = Array();
$LGFIELDS[1] = Array();
$LGFIELDS[1]['section'] = "Donor/Development Agency Information";
$LGFIELDS[1]['fields'] = Array('is_single_donor', 'funder_id', 'input_agencies', 'input_implemented_by');

$LGFIELDS[2] = Array();
$LGFIELDS[2]['section'] = "Program/Activity Information";
$LGFIELDS[2]['fields'] = Array('input_program_name', 'scope_id', 'country_id', 'region_id', 'input_locations',
                               'input_activity_start_year', 'input_activity_start_month', 'input_activity_end_year', 'input_activity_end_month',
                               'input_program_funding', 'input_summary');

$LGFIELDS[3] = Array();
$LGFIELDS[3]['section'] = "Voluntary Guidelines";

$LGFIELDS[4] = Array();
$LGFIELDS[4]['section'] = "Supplemental Information";

$section_to_save = 0;
$and_next = 0;
if (isset($_REQUEST['section_save_this']) || isset($_REQUEST['section_save_next'])) {
  $has_data = 1;
  if (isset($_REQUEST['section_save_this'])) {
    $section_to_save = $_REQUEST['section_save_this'];
    $section_to_save = substr($section_to_save, -1);
  }
  else if (isset($_REQUEST['section_save_next'])) {
    if (!strcmp($_REQUEST['section_save_next'], 'Save and Finish')) {
      $section_to_save = 4;
      $save_and_finish = 1;
    } else {
      $section_to_save = $_REQUEST['section_save_next'];
      $section_to_save = substr($section_to_save, -1);
      $section_to_save = sprintf ("%d", $section_to_save - 1);
      $and_next = 1;
    }
  }
}

if ($show_request) {
  echo "<pre>";
  print_r($_REQUEST);
  echo "</pre>";
}

//
// Section 1 Validation (Donor/Development Agency Information)
//

// input_activity_start_year
// input_activity_start_month
// input_activity_end_year
// input_activity_end_month
//
$errors = Array();
$save_section_success = 1;
$section_to_show = $section_to_save;

if ($section_to_save == 1) {
  $save_section_success = f_validate_section(1);

  // If there are no errors, save the information to the database.
  //
  if ($save_section_success) {
    if ($and_next) { $section_to_show = $section_to_show + 1; }
  }

  $section_1_validated = $save_section_success;
}

//
// Section 2 Validation (Program/Activity Information)
//

// input_activity_start_year
// input_activity_start_month
// input_activity_end_year
// input_activity_end_month
//
if ($section_to_save == 2) {
  $save_section_success = f_validate_section(2);

  // If there are no errors, save the information to the database.
  //
  if ($save_section_success) {
    if ($and_next) { $section_to_show = $section_to_show + 1; }
  }

  $section_2_validated = $save_section_success;
}

//
// Section 3 Voluntary Guidelines
//

// 
//
if ($section_to_save == 3) {
  $save_section_success = f_validate_section(3);

  // If there are no errors, save the information to the database.
  //
  if ($save_section_success) {
    if ($and_next) { $section_to_show = $section_to_show + 1; }
  }

  $section_3_validated = $save_section_success;
}

//
// Section 4 Voluntary Guidelines
//

// 
//
if ($section_to_save == 4) {
  $save_section_success = f_validate_section(4);

  // If there are no errors, save the information to the database.
  //
  if ($save_section_success) {
    if ($and_next) { $section_to_show = $section_to_show + 1; }
  }

  $section_4_validated = $save_section_success;
}

if ($save_and_finish) {
  $result_message = '';
  $sss = f_validate_section(1);
  if (!$sss) { $section_to_show = 1; $section_1_validated = 0; }
  if ($sss) { $sss = f_validate_section(2); if (!$sss) { $section_to_show = 2; $section_2_validated = 0; } }
  if ($sss) { $sss = f_validate_section(3); if (!$sss) { $section_to_show = 3; $section_3_validated = 0; } }
  if ($sss) { $sss = f_validate_section(4); if (!$sss) { $section_to_show = 4; $section_4_validated = 0; } }
  if ($sss) {
    // Calculated values...
    //
    $is_single_donor = 0;
    if (count($_REQUEST['country_id']) > 1) { $is_single_donor = 1; }
    
    $activity_start_dt = sprintf ("%s-%s-01", $_REQUEST['input_activity_start_year'], $_REQUEST['input_activity_start_month']);
    $activity_end_dt = sprintf ("%s-%s-01", $_REQUEST['input_activity_end_year'], $_REQUEST['input_activity_end_month']);

    if ($is_editing) {
      $updateSQL = sprintf ("update program set " .
        "is_single_donor = %s, agencies = %s, implemented_by = %s, title = %s, scope_id = %s, locations = %s, " .
        "activity_start_dt = %s, activity_end_dt = %s, funding = %s, summary = %s, poc_name = %s, poc_organization = %s, " .
        "poc_email = %s, poc_phone = %s, program_url = %s " .
        "where program_id = %d",
        f_sqlValue($is_single_donor, 'int'),
        f_sqlValue($_REQUEST['input_agencies'], 'text'),
        f_sqlValue($_REQUEST['input_implemented_by'], 'text'),
        f_sqlValue($_REQUEST['input_program_name'], 'text'),
        f_sqlValue($_REQUEST['scope_id'], 'int'),
        f_sqlValue($_REQUEST['input_locations'], 'text'),
        f_sqlValue($activity_start_dt, 'date'),
        f_sqlValue($activity_end_dt, 'date'),
        f_sqlValue($_REQUEST['input_program_funding'], 'float'),
        f_sqlValue($_REQUEST['input_summary'], 'text'),
        f_sqlValue($_REQUEST['input_program_poc_name'], 'text', 1),
        f_sqlValue($_REQUEST['input_program_poc_organization'], 'text', 1),
        f_sqlValue($_REQUEST['input_program_poc_email'], 'text', 1),
        f_sqlValue($_REQUEST['input_program_poc_phone'], 'text', 1),
        f_sqlValue($_REQUEST['input_program_url'], 'text', 1),
        $program_id);
      $Result1 = $mysqli->query($updateSQL);
      $result_message = "Your changes have been saved.";
    } else {
      // Insert the program record first and get the program_id
      //
      $insertSQL = sprintf ("insert into program " .
        "(is_single_donor, agencies, implemented_by, title, scope_id, locations, activity_start_dt, activity_end_dt, funding, " .
        " summary, poc_name, poc_organization, poc_email, poc_phone, program_url) values " .
        "(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
        f_sqlValue($is_single_donor, 'int'),
        f_sqlValue($_REQUEST['input_agencies'], 'text'),
        f_sqlValue($_REQUEST['input_implemented_by'], 'text'),
        f_sqlValue($_REQUEST['input_program_name'], 'text'),
        f_sqlValue($_REQUEST['scope_id'], 'int'),
        f_sqlValue($_REQUEST['input_locations'], 'text'),
        f_sqlValue($activity_start_dt, 'date'),
        f_sqlValue($activity_end_dt, 'date'),
        f_sqlValue($_REQUEST['input_program_funding'], 'float'),
        f_sqlValue($_REQUEST['input_summary'], 'text'),
        f_sqlValue($_REQUEST['input_program_poc_name'], 'text', 1),
        f_sqlValue($_REQUEST['input_program_poc_organization'], 'text', 1),
        f_sqlValue($_REQUEST['input_program_poc_email'], 'text', 1),
        f_sqlValue($_REQUEST['input_program_poc_phone'], 'text', 1),
        f_sqlValue($_REQUEST['input_program_url'], 'text', 1)
        );
      $Result1 = $mysqli->query($insertSQL);
      $mysql_error = mysqli_error($mysqli);
      $program_id = mysqli_insert_id($mysqli);
      $result_message = "Your program has been saved.";
    }
        
    // Save funded by
    //
    if ($is_editing) {// If editing, remove old entries because we are just going to replace them.
      $deleteSQL = sprintf ("delete from program_funder where program_id = %d", $program_id);
      $Result1 = $mysqli->query($deleteSQL);      
    }
		if (isset($_REQUEST['funder_id'])) {
	    foreach ($_REQUEST['funder_id'] as $funder_id) {
	      $insertSQL = sprintf ("insert into program_funder (program_id, funder_id) values (%s, %s)",
	        f_sqlValue($program_id, 'int'),
	        f_sqlValue($funder_id, 'int'));
	      $Result1 = $mysqli->query($insertSQL);
	    }
    }
    
    // Save Countries
    //
    if ($is_editing) {// If editing, remove old entries because we are just going to replace them.
      $deleteSQL = sprintf ("delete from program_country where program_id = %d", $program_id);
      $Result1 = $mysqli->query($deleteSQL);      
    }
		if (isset($_REQUEST['country_id'])) {
	    foreach ($_REQUEST['country_id'] as $country_id) {
	      $insertSQL = sprintf ("insert into program_country (program_id, country_id) values (%s, %s)",
	        f_sqlValue($program_id, 'int'),
	        f_sqlValue($country_id, 'int'));
	      $Result1 = $mysqli->query($insertSQL);
	    }
		}
    
    // Save Regions
    //
    if ($is_editing) {// If editing, remove old entries because we are just going to replace them.
      $deleteSQL = sprintf ("delete from program_region where program_id = %d", $program_id);
      $Result1 = $mysqli->query($deleteSQL);      
    }
		if (isset($_REQUEST['region_id'])) {
	    foreach ($_REQUEST['region_id'] as $region_id) {
	      $insertSQL = sprintf ("insert into program_region (program_id, region_id) values (%s, %s)",
	        f_sqlValue($program_id, 'int'),
	        f_sqlValue($region_id, 'int'));
	      $Result1 = $mysqli->query($insertSQL);
	    }
   }
    
    // Save Voluntary Guidelines
    //
    if ($is_editing) {// If editing, remove old entries because we are just going to replace them.
      $deleteSQL = sprintf ("delete from program_vg_section where program_id = %d", $program_id);
      $Result1 = $mysqli->query($deleteSQL);      
    }
	if (isset($_REQUEST['vg'])) {
	    foreach ($_REQUEST['vg'] as $vg_part_section) {
	      list($vg_part, $vg_section) = preg_split("/_/", $vg_part_section, 2);
	      $insertSQL = sprintf ("insert into program_vg_section (program_id, vg_part_id, vg_section_id) values (%s, %s, %s)",
	        f_sqlValue($program_id, 'int'),
	        f_sqlValue($vg_part, 'text'),
	        f_sqlValue($vg_section, 'text'));
	      $Result1 = $mysqli->query($insertSQL);
	    }
	}
    
    $resultSQL = sprintf ("insert into result_message (program_id, message) values (%s, %s)",
        f_sqlValue($program_id, 'int'),
        f_sqlValue($result_message, 'text'));
    $Result1 = $mysqli->query($resultSQL);
    $message_id = mysqli_insert_id($mysqli);

    // Redirect to index.php
    //
    header('Location: index.php?r=' . $message_id);
    die();
  }
}

function f_validate_section($sec) {
  global $errors;
  $sss = 1;

  switch ($sec) {
    case 1:
      // Make sure at least one funder is selected.
      //
      if (!isset($_REQUEST['funder_id']) || (count($_REQUEST['funder_id']) == 0)) {
        array_push($errors, ("You must select at least one funder."));
      }
      break;

    case 2:  
      // Program/Activty Name
      //
      if (!isset($_REQUEST['input_program_name'])) {
        array_push($errors, sprintf ("<a href=\"#input_program_name\">Program/Activity Name</a> is required."));
      } else {
        $ov = $wv = $_REQUEST['input_program_name'];
        $wv = trim($wv);
        if (strcmp($ov, $wv) != 0) {
          $_REQUEST['input_program_name'] = $wv;
          array_push($errors, sprintf ("<a href=\"#input_program_name\">Program/Activity Name</a> contained invalid characters. %s", MODIFIED_STRING_ERROR));
        }
        if (strlen($wv) == 0) {
          array_push($errors, sprintf ("<a href=\"#input_program_name\">Program/Activity Name</a> is required."));
        }  
      }
    
      if (!isset($_REQUEST['country_id']) || (count($_REQUEST['country_id']) == 0)) {
        // No country selection is only allowed if Global scope is selected.
        //
        if ($_REQUEST['scope_id'] != 3) {
          array_push($errors, ("<a href=\"#input_selected_countries\">Country</a> selection invalid. You must select at least one country."));
        }
      } else {
        // If one country is selected, make sure multiple country scope is not selected.
        //
        if (count($_REQUEST['country_id']) == 1) {
          if ($_REQUEST['scope_id'] == 2) {
            array_push($errors, ("<a href=\"#input_selected_countries\">Country</a> selection invalid. Multiple country scope specified but only one country has been selected."));
          }
        } else {
          // If more than one country is selected, make sure single country scope is not selected.
          //
          if ($_REQUEST['scope_id'] == 1) {
            array_push($errors, ("<a href=\"#input_selected_countries\">Country</a> selection invalid. Single country scope specified but multiple countries have been selected."));
          }
        }
      }
    
/*
      if (!isset($_REQUEST['region_id']) || (count($_REQUEST['region_id']) == 0)) {
        // No country selection is only allowed if Global scope is selected.
        //
        if ($_REQUEST['scope_id'] != 3) {
          array_push($errors, ("<a href=\"#input_selected_regions\">Region</a> selection invalid. You must select at least one region."));
        }
      } else {
        if (count($_REQUEST['region_id']) > 1) {
          if ($_REQUEST['scope_id'] == 1) {
            array_push($errors, ("<a href=\"#input_selected_regions\">Region</a> selection invalid. Single country scope specified but multiple regions selected."));
          }
        }
      }  
*/
    
/*
      if (isset($_REQUEST['input_activity_start_year']) || isset($_REQUEST['input_activity_end_year'])) {
        if (isset($_REQUEST['input_activity_start_year'])) {
          $_REQUEST['input_activity_start_year'] = sprintf ("%d", $_REQUEST['input_activity_start_year']);
          if (($_REQUEST['input_activity_start_year'] < MIN_START_YEAR) || ($_REQUEST['input_activity_start_year'] > MAX_START_YEAR)) {
            array_push($errors, sprintf ("<a href=\"#input_activity_date\">Activity Start Year</a> must be between %d and %d.",
              MIN_START_YEAR, MAX_START_YEAR));
          }
        }
        if (isset($_REQUEST['input_activity_end_year'])) {
          $_REQUEST['input_activity_end_year'] = sprintf ("%d", $_REQUEST['input_activity_end_year']);
          if (($_REQUEST['input_activity_end_year'] < MIN_END_YEAR) || ($_REQUEST['input_activity_end_year'] > MAX_END_YEAR)) {
            array_push($errors, sprintf ("<a href=\"#input_activity_date\">Activity End Year</a> must be between %d and %d.",
              MIN_END_YEAR, MAX_END_YEAR));
          }
        }
        if (isset($_REQUEST['input_activity_start_year']) && isset($_REQUEST['input_activity_end_year'])) {
          if ($_REQUEST['input_activity_start_year'] > $_REQUEST['input_activity_end_year']) {
            array_push($errors, sprintf ("<a href=\"#input_activity_date\">Activity End Year</a> must after Activity Start Year"));
          }
    
          if ($_REQUEST['input_activity_start_year'] == $_REQUEST['input_activity_end_year']) {
            if ($_REQUEST['input_activity_start_month'] > $_REQUEST['input_activity_end_month']) {
              array_push($errors, sprintf ("<a href=\"#input_activity_date\">Activity End Month</a> must after Activity Start Month if they are in the same calendar year."));
            }
          }    
        }
      }
*/
      
      // input_program_funding
      //
      if (isset($_REQUEST['input_program_funding'])) {
        // Strip all non-numbers and periods.
        //
        $ov = $wv = $_REQUEST['input_program_funding'];
        $wv = preg_replace("/[^0-9\.]/", "", $wv);
      
        // If there is a decimal, make sure there is only one.
        //
        if (preg_match("/\./", $wv)) {
          $decimal_count = substr_count($wv, '.');
          if ($decimal_count > 1) {
            while (substr_count($wv, '.') > 1) {
              $wv = substr($wv, 0, strrpos($wv, '.'));
            }
            $_REQUEST['input_program_funding'] = $wv;
            array_push($errors, sprintf ("<a href=\"#input_program_funding\">Estimated program funding</a> can not have more than one decimal. %s", MODIFIED_STRING_ERROR));    
          }
        }
        if (count($errors) == 0) {
          if ($wv < 0) {
            array_push($errors, sprintf ("<a href=\"#input_program_funding\">Estimated program funding</a> can not be a negative number."));    
          }
        }
        if (count($errors) == 0) {
          if (strcmp($ov, $wv) != 0) {
            $_REQUEST['input_program_funding'] = $wv;
            array_push($errors, sprintf ("<a href=\"#input_program_funding\">Estimated program funding</a> contained invalid characters. %s", MODIFIED_STRING_ERROR));    
          }
        }
      }
      break;

    case 3:  
      break;

    case 4:
      // Validate the URL
      //
      if (isset($_REQUEST['input_program_url'])) {
        $_REQUEST['input_program_url'] = trim($_REQUEST['input_program_url']);
        if (strlen($_REQUEST['input_program_url']) > 0) {
          if (!filter_var($_REQUEST['input_program_url'], FILTER_VALIDATE_URL, FILTER_FLAG_HOST_REQUIRED)) {
            array_push($errors, sprintf ("<a href=\"#input_program_url\">Program Website</a> is invalid. Please verify URL format.")); 
          }
        }
      }

      // Validate the Email Address
      //
      if (isset($_REQUEST['input_program_poc_email'])) {
        $_REQUEST['input_program_poc_email'] = trim($_REQUEST['input_program_poc_email']);
        if (strlen($_REQUEST['input_program_poc_email']) > 0) {
          if (!filter_var($_REQUEST['input_program_poc_email'], FILTER_VALIDATE_EMAIL)) {
            array_push($errors, sprintf ("<a href=\"#input_program_poc_email\">Point of Contact Email Address</a> is invalid. Please verify email address format.")); 
          }
        }
      }
      
      break;
  }

  if (count($errors) > 0) {
    $sss = 0;
  }
 
  return $sss;
}

function f_sqlValue($value, $type, $can_be_null = 0) {
  global $mysqli;
  $rv = mysqli_real_escape_string($mysqli, $value);
  error_log($value);
  switch ($type) {
    case 'int':
      if ($can_be_null && (strlen($rv) == 0)) {
        $rv = 'NULL';
      } else {
        $rv = sprintf("%d", $rv);
      }
      break;
    case 'float':
      if ($can_be_null && (strlen($rv) == 0)) {
        $rv = 'NULL';
      } else {
        $rv = sprintf("%0.3f", $rv);
      }
      break;
    case 'text':
      if ($can_be_null && (strlen($rv) == 0)) {
        $rv = 'NULL';
      } else {
        $rv = sprintf("'%s'", $rv);
      }
      break;
    case 'date':
      if ($can_be_null && (strlen($rv) == 0)) {
        $rv = 'NULL';
      } else {
        $rv = sprintf("'%s'", $rv);
      }
      break;
  }
  
  return $rv;
}

?>