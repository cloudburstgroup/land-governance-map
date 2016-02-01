<?php

define ("CARTODB_API_KEY", "YOUR_CARTODB_API_KEY");
define ("CARTODB_API_URL", "https://ccg.cartodb.com/api/v2/sql");
define ("CARTODB_SELECT_CSV", sprintf("%s&format=csv&q=%%s", CARTODB_API_URL));
define ("CARTODB_SELECT_JSON", sprintf("%s&q=%%s", CARTODB_API_URL));
define ("CARTODB_UPDATE", sprintf("%s&q=%%s", CARTODB_API_URL));

function cartoSQL($s) {
  $ch = curl_init(CARTODB_API_URL);
  $query = http_build_query(array('q'=>$s,'api_key'=>CARTODB_API_KEY));
  curl_setopt($ch, CURLOPT_POST, TRUE);
  curl_setopt($ch, CURLOPT_POSTFIELDS, $query);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
  $str = curl_exec($ch);
  curl_close($ch);
  return $str;
}

?>