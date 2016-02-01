<?php
require_once("cartodb.php");
?>
<html>
<head>
  <link rel="stylesheet" href="cartodb.css" />
  <script src="http://libs.cartocdn.com/cartodb.js/v3/cartodb.js"></script>
  <!--[if lte IE 8]>
    <link rel="stylesheet" href="http://libs.cartocdn.com/cartodb.js/v2/themes/css/cartodb.ie.css" />
  <![endif]-->
  <style>
    html, body {width:100%; height:100%; padding: 0; margin: 0; font-family:tahoma, arial; }
    #cartodb-map { width: 100%; height:70%; background: black;}
    #cartodb-details { width: 100%; height:25%; background: #EEE; border-top: 2px solid #777; padding:10px; overflow-y:scroll; text-wrap: unrestricted; }
    #cartodb-legend { display: hidden; padding-top: 3px; position: absolute; top: 70px; left: 10px; width: 30px; height:100px; border: 1px solid #777; background: #FFF; z-index:10;}
    .legend_square { opacity:0.8; font-size: 10pt; color: #FFF; text-align:center; width:20px; height: 20px; border: 1px solid #777; margin:auto; }
    #map-title { position: absolute; top: 10px; left: 170px; height:22px; font-size: 12pt; border: 1px solid #777; padding: 5px; background: #FFF; opacity: 0.8; z-index:10; border-radius:4px; }
    #menu { position: absolute; top: 10px; left: 50px; width: 130px; height:60px; background: transparent; z-index:10;}
    #menu a { 
      margin: 2px 10px 0 0;
      float: left;
      vertical-align: baseline;
      width: 100px;
      padding: 5px;
      text-align: center;
      font: bold 11px Helvetica,Arial;
      line-height: normal;
      color: #555;
      border-radius: 4px;
      border: 1px solid #777777;
      background: #ffffff;
      text-decoration: none;
      cursor: pointer;
    }
    #menu a.button_on {
      background: #00441B;
      color: #FFF;
    }
    #menu a:hover { 
      color: #F84F40;
    }
  </style>

<script type="infowindow/html" id="infowindow_template">
  <div class="cartodb-popup">
    <a href="#close" class="cartodb-popup-close-button close">x</a>
     <div class="cartodb-popup-content-wrapper">
       <div class="cartodb-popup-header">
         <img style="width: 100%" src="http://cartodb.com/assets/logos/logos_full_cartodb_light-5ef5e4ff558f4f8d178ab2c8faa231c1.png"></src>
       </div>
       <div class="cartodb-popup-content">
         <!-- content.data contains the field info -->
         <h4>Programs: </h4>
         <p>{{content.data.description}}</p>
       </div>
     </div>
     <div class="cartodb-popup-tip-container"></div>
  </div>
</script>

  <script>
    var map;
    var fundersNames = {
      "funder_aus": 'Austria',
      "funder_bel": 'Belgium',
      "funder_den": 'Denmark',
      "funder_eu" : 'EU',
      "funder_fao": 'FAO',
      "funder_fra": 'France',
      "funder_ger": 'Germany',
      "funder_net": 'Netherlands',
      "funder_swe": 'Sweden',
      "funder_swi": 'Switzerland',
      "funder_uk" : 'United Kingdom',
      "funder_us" : 'United States',
      "funder_wb" : 'World Bank'
      };
    var fundersArray = [];

    var additionalCartoCSSCountryStyles = 'line-color: #DDD; line-opacity: 1; line-width: 1; polygon-opacity: 0.8;';

    var colorLevels = {
      '1': '#CCECE6',
      '2': '#AAD8C9',
      '3': '#88C2A4',
      '4': '#66C2A4',
      '5': '#41AE76',
      '6': '#238B45',
      '7': '#00441B'
    };
   
    function init(){
      // initiate leaflet map
      map = new L.Map('cartodb-map', { 
        center: [20,30],
        zoom: 3
      })

http://a.tiles.mapbox.com/v3/mapbox.natural-earth-2/{z}/{x}/{y}.png

      L.tileLayer('http://a.tiles.mapbox.com/v3/jeremyagreen.global_donor_map/{z}/{x}/{y}.png', {
        attribution: '<a href="http://mapbox.com" target="_blank">Mapbox</a>'
      }).addTo(map);
/*
      L.tileLayer('https://maps.nlp.nokia.com/maptiler/v2/maptile/newest/normal.day/{z}/{x}/{y}/256/png8?lg=eng&token=A7tBPacePg9Mj_zghvKt9Q&app_id=KuYppsdXZznpffJsKT24', {
        attribution: 'Nokia <a href="http://here.net/services/terms" target="_blank">Terms &amp; Feedback</a>'
      }).addTo(map);
*/
      
      var layerUrl = 'http://ccg.cartodb.com/api/v2/viz/e1aca9f8-27d1-11e3-97ae-3085a9a956e8/viz.json';
 
      var sublayers = [];

      cartodb.createLayer(map, layerUrl)
        .addTo(map)
        .on('done', function(layer) {

          var cartoCSSArray = [];            
          var cartoCSSString = '';

          for (i = 0; i < Object.keys(fundersNames).length; i++) {
            var tColorIndex = i+1;
            if (tColorIndex > 7) { tColorIndex = 7; }
            cartoCSSArray.push('#land_governance [funder_count = ' + (i+1) +
              '] { polygon-fill: ' + colorLevels[tColorIndex] + '; ' + additionalCartoCSSCountryStyles + ' } ');
          }
          cartoCSSString = cartoCSSArray.join(' ');
          var subLayerOptions = {
            sql: "SELECT * FROM land_governance where funder_count > 0",
            cartocss: cartoCSSString
          }
          var sublayer = layer.getSubLayer(0);
          sublayer.set(subLayerOptions);
          sublayer.on('featureClick', function(e, pos, latlng, data) {
            var funderString = '';
            var funderOnArray = [];
            var funderNameKeys = Object.keys(fundersNames);

            if (!$("#all").hasClass('button_on')) {
              for (i = 0; i < funderNameKeys.length; i++) {
                if ($("#"+funderNameKeys[i]).hasClass("button_on")) {
                  funderOnArray.push(funderNameKeys[i]);
                }
              }
              funderString = funderOnArray.join();
            }

            // Ajax call to get country details to append to the cartodb-details div.
            //
            $.post( "cartodb_request.php", {
                cartodb_id: data.cartodb_id,
                funders: funderString
              }, function( d ) {
              $("#cartodb-details").html( d );
            });
            
          });
          sublayers.push(sublayer);
        })
        .on('error', function() {
          //log the error
        })
        .done(function(vis, layers) {
          layers[0].setInteraction(true);
          layers[0].setInteractivity(['cartodb_id']);
        });

        f_update_legend(7);

      $('.button').click(function() {
          $('.button').removeClass('selected');
          $(this).addClass('selected');
          // Setup The "in" list here... ?
          //
          var selectedID = $(this).attr('id');
                   
          var inList = '';
          if (selectedID != 'all') {
            $("#all").removeClass('selected button_on');


            if ($.inArray("'"+fundersNames[selectedID]+"'", fundersArray) == -1) {
              fundersArray.push("'"+fundersNames[selectedID]+"'");
              $("#"+selectedID).addClass("button_on");
            } else {
              var tString = fundersArray.join();
              fundersArray.splice( $.inArray("'"+fundersNames[selectedID]+"'", fundersArray), 1 );
              tString = fundersArray.join();
              $("#"+selectedID).removeClass("button_on");
            }
          } else {
            for (var funder in fundersNames) {
              $('#'+funder).removeClass("button_on");
            }
            fundersArray = [];
          }

          $("#cartodb-legend").hide();

          if (fundersArray.length > 0) {
            var fieldSelectionString = '';
            var fieldSelectionArray = [];
            for (var funder in fundersNames) {
              if ($('#'+funder).hasClass("button_on")) {
                fieldSelectionArray.push('COALESCE('+funder+',0)');
              }
            }
            fieldSelectionString = fieldSelectionArray.join('+');
                        
            var inSQLString = fundersArray.join();
//            var selectSQL = "SELECT count(*) as funder_count, funder_id FROM land_governance WHERE funder_name in = (" + inSQLString + ") group by funder_id";
            var selectSQL = "SELECT *, ("+fieldSelectionString+") as sub_funder_count from land_governance";

            // Create the color scale based on the number of funders that were selected.
            //
            var colorIndex = 7; // Start at the top.
            var cartoCSSArray = [];            
            var cartoCSSString = '';

            for (i = 0; i < fundersArray.length; i++) {
              var tColorIndex = colorIndex - i;
              if (tColorIndex < 1) { tColorIndex = 1; }
              cartoCSSArray.push('#land_governance [sub_funder_count = ' + (fundersArray.length-i) +
                '] { polygon-fill: ' + colorLevels[tColorIndex] + '; ' + additionalCartoCSSCountryStyles + ' } ');
            }
            cartoCSSString = cartoCSSArray.join('');
            sublayers[0].set({
              sql: selectSQL,
              cartocss: cartoCSSString
            });

            f_update_legend(fundersArray.length);

            $("#cartodb-details").html( '' );
          } else {
            var cartoCSSArray = [];            
            var cartoCSSString = '';
  
            $("#all").addClass('selected button_on');

            for (i = 0; i < Object.keys(fundersNames).length; i++) {
              var tColorIndex = i+1;
              if (tColorIndex > 7) { tColorIndex = 7; }
              cartoCSSArray.push('#land_governance [funder_count = ' + (i+1) +
                '] { polygon-fill: ' + colorLevels[tColorIndex] + '; ' + additionalCartoCSSCountryStyles + ' } ');
            }
            cartoCSSString = cartoCSSArray.join('');

            sublayers[0].set({
              sql: "SELECT * FROM land_governance where funder_count > 0",
              cartocss: cartoCSSString
            });

            f_update_legend(7);

            $("#cartodb-details").html( '' );

          }
        });
          
    }
    
    function f_build_legend_string(levels) {
      var s = '';
      
      if (levels > 7) { levels = 7; }
      
      for (i = 0; i < levels; i++) {
        var cIndex = 7-i;
        var level = parseInt(levels) - i;
        if (level == 7) { level = '7+' }  
        s = s + "<div class='legend_square' style='background: " + colorLevels[cIndex] + ";'>" + level + "</div>";
      }
      
      return s;
    }
    
    function f_update_legend(levels) {
      var legendString = f_build_legend_string(levels);
      var c = levels;
      if (c > 7) { c = 7; }
      $("#cartodb-legend").height((c * 22) + 4);
      $("#cartodb-legend").html(legendString);
      $("#cartodb-legend").show();
    }
  </script>
</head>
<body onload="init()">
<div style="width:1000px; height:100%">
  <div id='cartodb-map'></div>
  <div id='cartodb-details'></div>
</div>
  <div id="map-title">Land Governance Program Map</div>
  <div id='cartodb-legend'></div>
  <div id='menu'>
    <a href="#all" id="all" class="button all">All Donors</a><br /><br />
    <a href="#funder_aus" id="funder_aus" class="button aus">Austria</a> 
    <a href="#funder_bel" id="funder_bel" class="button bel">Belgium</a> 
    <a href="#funder_den" id="funder_den" class="button den">Denmark</a> 
    <a href="#funder_eu"  id="funder_eu"  class="button ue" >European Union</a> 
    <a href="#funder_fra" id="funder_fra" class="button fra">France</a> 
    <a href="#funder_ger" id="funder_ger" class="button ger">Germany</a> 
    <a href="#funder_net" id="funder_net" class="button net">Netherlands</a> 
    <a href="#funder_swe" id="funder_swe" class="button swe">Sweden</a> 
    <a href="#funder_fao" id="funder_fao" class="button fao">FAO</a> 
    <a href="#funder_swi" id="funder_swi" class="button swi">Switzerland</a> 
    <a href="#funder_uk"  id="funder_uk"  class="button uk" >United Kingdom</a> 
    <a href="#funder_us"  id="funder_us"  class="button us" >United States</a> 
    <a href="#funder_wb"  id="funder_wb"  class="button wb" >World Bank</a>
  </div>
</body>
</html>