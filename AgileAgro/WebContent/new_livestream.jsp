<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="fixed">
<head>

<!-- Basic -->
<meta charset="UTF-8">

<title>LiveStream | AgileAgro</title>

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- Web Fonts  -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light"
	rel="stylesheet" type="text/css">

<!-- Vendor CSS -->
<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
<link rel="stylesheet"
	href="assets/vendor/font-awesome/css/font-awesome.css" />
<link rel="stylesheet"
	href="assets/vendor/magnific-popup/magnific-popup.css" />
<link rel="stylesheet"
	href="assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

<!-- Specific Page Vendor CSS -->
<link rel="stylesheet"
	href="assets/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet"
	href="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
<link rel="stylesheet" href="assets/vendor/morris/morris.css" />

<!-- Theme CSS -->
<link rel="stylesheet" href="assets/stylesheets/theme.css" />

<!-- Skin CSS -->
<link rel="stylesheet" href="assets/stylesheets/skins/default.css" />

<!-- Theme Custom CSS -->
<link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

<!-- Head Libs -->
<script src="assets/vendor/modernizr/modernizr.js"></script>
<!-- For the gauges -->
<script src="lib/3/amcharts.js"></script>
<script src="lib/3/gauge.js"></script>
<script src="lib/3/patterns.js"></script>

<!-- Load Jquery first -->
<script src="assets/vendor/jquery/jquery.js"></script>

<!-- Code for guages -->
<script type="text/javascript">
//--for ajax
var value1;
var value2;
var value3;
function update() {
  $(function () 
  {
    $.ajax({                                      
      url: 'http://139.59.2.47/agile_agro/database.php',                     
      data: "",                       
      dataType: 'json',                 
      success: function(data)         
      {
         value1 = data[0];              
         value2 = data[1];  
		 value3 = data[2];  		
        //$('#output').html("<b>humidity: </b>"+value1+"<b> temperature: </b>"+value2+"<b> soil Moisture: </b>"+value3);  
        
      } 
    });
  
  }); 
 }
 $(document).ready(update); // Call on page load
 //setInterval(update, 2000);
  
  
  





   var gaugeChart = AmCharts.makeChart("chartdiv", {
		"type" : "gauge",
		"faceBorderAlpha": 1,
		"fontSize": 17,
		"theme" : "default",
		"axes" : [ {
			"axisThickness" : 1,
			"axisAlpha" : 0.2,
			"tickAlpha" : 0.2,
			"valueInterval" : 10,
			"bands" : [ {
				"color" : "#84b761",
				"endValue" : 30,
				"startValue" : 0
			}, {
				"color" : "#fdd400",
				"endValue" : 45,
				"startValue" : 30
			}, {
				"color" : "#cc4748",
				"endValue" : 60,
				"innerRadius" : "95%",
				"startValue" : 45
			} ],
			"bottomText" : "0 C",
			"bottomTextYOffset" : -20,
			"endValue" : 60
		} ],
		"arrows" : [ {} ],
		"export" : {
			"enabled" : true
		}
	});
	setInterval(randomValue, 1000);

	// set random value
	function randomValue() {
		var value = Math.round(20 + Math.random() * 30);
		//update();
		var value = value1;
		
		if (gaugeChart) {
			if (gaugeChart.arrows) {
				if (gaugeChart.arrows[0]) {
					if (gaugeChart.arrows[0].setValue) {
						gaugeChart.arrows[0].setValue(value);
						gaugeChart.axes[0].setBottomText(value + " C");
					}
				}
			}
		}
	}
  
	var gaugeChart1 = AmCharts.makeChart("chartdiv1", {
		"type" : "gauge",
		"faceBorderAlpha": 1,
		"fontSize": 15,
		"theme" : "default",
		
		"axes" : [ {
			"axisThickness" : 1,
			"axisAlpha" : 0.2,
			"tickAlpha" : 0.2,
			"valueInterval" : 10,
			"bands" : [ {
				"color" : "#84b761",
				"endValue" : 45,
				"startValue" : 20
			}, {
				"color" : "#fdd400",
				"endValue" : 60,
				"startValue" : 45
			}, {
				"color" : "#cc4748",
				"endValue" : 100,
				"innerRadius" : "95%",
				"startValue" : 60
			} ],
			"bottomText" : "0 ",
			"bottomTextYOffset" : -20,
			"endValue" : 100
		} ],
		"arrows" : [ {} ],
		"export" : {
			"enabled" : true
		}
	});

	setInterval(randomValue1, 1000);

	// set random value
	function randomValue1() {
		var value1 = Math.round(50 + Math.random() * 10);
		//var value1 = value2;
		if (gaugeChart1) {
			if (gaugeChart1.arrows) {
				if (gaugeChart1.arrows[0]) {
					if (gaugeChart1.arrows[0].setValue) {
						gaugeChart1.arrows[0].setValue(value1);
						gaugeChart1.axes[0].setBottomText("Humidity");
					}
				}
			}
		}
	}
	
	 var gaugeChart2 = AmCharts.makeChart("chartdiv2", {
			"type" : "gauge",
			"faceBorderAlpha": 1,
			"fontSize": 15,
			"theme" : "default",
			"axes" : [ {
				"axisThickness" : 1,
				"axisAlpha" : 0.2,
				"tickAlpha" : 0.2,
				"valueInterval" : 10,
				"bands" : [ {
					"color" : "#84b761",
					"endValue" : 100,
					"startValue" : 65
				}, {
					"color" : "#fdd400",
					"endValue" : 65,
					"startValue" :50 
				}, {
					"color" : "#cc4748",
					"endValue" : 50,
					"innerRadius" : "95%",
					"startValue" : 0
				} ],
				"bottomText" : "0 C",
				"bottomTextYOffset" : -20,
				"endValue" : 100
			} ],
			"arrows" : [ {} ],
			"export" : {
				"enabled" : true
			}
		});

		setInterval(randomValue2, 1000);

		// set random value
		function randomValue2() {
			var value = Math.round(35 + Math.random() * 20);
			if (gaugeChart2) {
				if (gaugeChart2.arrows) {
					if (gaugeChart2.arrows[0]) {
						if (gaugeChart2.arrows[0].setValue) {
							gaugeChart2.arrows[0].setValue(value3);
							gaugeChart2.axes[0].setBottomText(value + " %");
						}
					}
				}
			}
		}
	
	
	
</script>


</head>
<body>
<%
		if (session.getAttribute("logged_user") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<section class="body">

		<!-- start: header -->
		<header class="header">
			<div class="logo-container">
				<a class="logo"> <img
					src="http://res.cloudinary.com/ddgydqg8v/image/upload/v1464185772/imageedit_2_7504041153_triu7t.png"
					height="35" />
				</a>

				<div class="visible-xs toggle-sidebar-left"
					data-toggle-class="sidebar-left-opened" data-target="html"
					data-fire-event="sidebar-left-opened">
					<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
				</div>
			</div>

			<!-- start: search & user box -->
			<div class="header-right">

				<form action="pages-search-results.html" class="search nav-form">
				</form>

				<span class="separator"></span>

				<ul class="notifications">

					<li><h5>Quick Notifications</h5></li>
					<li><a href="#" class="dropdown-toggle notification-icon"
						data-toggle="dropdown"> <i class="fa fa-leaf"></i>

					</a>

						<div class="dropdown-menu notification-menu">
							<div class="notification-title">Live stream</div>

							<div class="content">
								<ul>
									<li><a href="#" class="clearfix">
											<div class="image">
												<i class="fa fa-envelope bg-danger"></i>
											</div> <span class="title">Harvesting approaching! Seactor
												4.</span> <span class="message">Just now</span>
									</a></li>

								</ul>

								<hr />

								<div class="text-right"></div>
							</div>
						</div></li>
				</ul>

				<span class="separator"></span>

				<div id="userbox" class="userbox">
					<a href="#" data-toggle="dropdown">
						<figure class="profile-picture">
							<img
								src="http://res.cloudinary.com/ddgydqg8v/image/upload/v1445523459/user-placeholder_hvt8xv.png"
								alt="user" class="img-circle"
								data-lock-picture="http://res.cloudinary.com/ddgydqg8v/image/upload/v1445523459/user-placeholder_hvt8xv.png" />
						</figure>
						<div class="profile-info" data-lock-name="John Doe"
							data-lock-email="johndoe@okler.com">
							<span class="name"><%=session.getAttribute("logged_user") %></span>

						</div> <i class="fa custom-caret"></i>
					</a>

					<div class="dropdown-menu">
						<ul class="list-unstyled">
							<li class="divider"></li>

							<li><a role="menuitem" tabindex="-1" href="new_logout.jsp"><i
									class="fa fa-power-off"></i> Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- end: search & user box -->
		</header>
		<!-- end: header -->

		<div class="inner-wrapper">
			<!-- start: sidebar -->
			<aside id="sidebar-left" class="sidebar-left">

				<div class="sidebar-header">
					<div class="sidebar-title">Agro-Menu</div>
					<div class="sidebar-toggle hidden-xs"
						data-toggle-class="sidebar-left-collapsed" data-target="html"
						data-fire-event="sidebar-left-toggle">
						<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>

				<div class="nano">
					<div class="nano-content">
						<nav id="menu" class="nav-main" role="navigation">
							<ul class="nav nav-main">
								<li class="nav-main"><a href="new_dashboard.jsp"> <i
										class="fa fa-home" aria-hidden="true"></i> <span>Agro
											Dashboard</span>
								</a></li>

								<li class="nav-main"><a href="new_sectorwise.jsp"> <i
										class="fa fa-bar-chart-o" aria-hidden="true"></i> <span>Sector-wise
											Reports</span>
								</a></li>
								<li class="nav-main"><a href="new_cropwise.jsp"> <i
										class="fa fa-tasks" aria-hidden="true"></i> <span>Crop-wise
											Reports</span>
								</a></li>
								<li class="nav-main"><a href="new_alerts.jsp"> <i
										class="fa fa-bolt" aria-hidden="true"></i> <span>Alerts</span>
								</a></li>
								<li class="nav-main"><a href="new_sensorhealth.jsp"> <i
										class="fa fa-heart" aria-hidden="true"></i> <span>Sensor
											Health</span>
								</a></li>
								<li class="nav-active"><a href="new_livestream.jsp"> <i
										class="fa fa-spin fa-circle-o-notch" aria-hidden="true"></i> <span>Live Stream Data
											</span>
								</a></li>
								<li></li>
							</ul>
						</nav>

						<hr class="separator" />

						<div class="sidebar-widget widget-tasks">
							<div class="widget-header">
								<h6>Knowledge Base</h6>
								<div class="widget-toggle">+</div>
							</div>
							<div class="widget-content">
								<ul class="list-unstyled m-none">
									<li><a href="new_viewkb.jsp">View Knowledge Base</a></li>
									<li><a href="new_requestkb.jsp">Request Knowledge Base
											Update</a></li>
								</ul>
							</div>
						</div>

						<hr class="separator" />


					</div>

				</div>

			</aside>
			<!-- end: sidebar -->

			<section role="main" class="content-body">
				<header class="page-header">
					<h2>Live Stream</h2>

					<div class="right-wrapper pull-right"></div>
				</header>

				<!-- start: page -->
				<div class="row">

					



				</div>
				<div class="row">
					<section class="panel ">
						<header class="panel-heading">
							<div class="panel-actions">
								<a href="#" class="fa fa-caret-down"></a> <a href="#"
									class="fa fa-times"></a>
							</div>

							<h2 class="panel-title"><i class="fa fa-spin fa-circle-o-notch"></i>&nbsp;&nbsp; Streaming Live from Sensors Now!</h2>
						</header>
						<div class="panel-body" style="background-color:#f6f6f6">
						<!-- Enable 3 sensors here -->
						
						<div class="row">
							<div class="col-md-4">
								<section class="panel panel-tertiary" >
								<header class="panel-heading">
									<div class="panel-actions">
										<a href="#" class="fa fa-caret-down"></a>
										<a href="#" class="fa fa-times"></a>
									</div>

									<h2 class="panel-title"><i class="fa fa-spin fa-circle-o-notch"></i>&nbsp;&nbsp;Temperature - Live</h2>
								</header>
								<div class="panel-body">
									<div id="chartdiv" style="width: 100%; height: 250px; background-color: #FFFFFF;"></div>
								</div>
							</section>
							</div>
						<div class="col-md-4">
						
						<section class="panel panel-tertiary" >
								<header class="panel-heading">
									<div class="panel-actions">
										<a href="#" class="fa fa-caret-down"></a>
										<a href="#" class="fa fa-times"></a>
									</div>

									<h2 class="panel-title"><i class="fa fa-spin fa-circle-o-notch"></i>&nbsp;&nbsp;Humidity - Live</h2>
								</header>
								<div class="panel-body">
									<div id="chartdiv1" style="width: 100%; height: 250px; background-color: #FFFFFF;"></div>
								</div>
							</section>
						</div>
						<div class="col-md-4">
						<section class="panel panel-tertiary" >
								<header class="panel-heading">
									<div class="panel-actions">
										<a href="#" class="fa fa-caret-down"></a>
										<a href="#" class="fa fa-times"></a>
									</div>

									<h2 class="panel-title"><i class="fa fa-spin fa-circle-o-notch"></i>&nbsp;&nbsp;Moisture - Live</h2>
								</header>
								<div class="panel-body">
									<div id="chartdiv2" style="width: 100%; height: 250px; background-color: #FFFFFF;"></div>
								</div>
						</section>
						</div>
						
						</div>
					</section>
				</div>
				
				
				
				

				<!-- End the Page content -->




				<aside id="sidebar-right" class="sidebar-right">
					<div class="nano">
						<div class="nano-content">
							<a href="#" class="mobile-close visible-xs"> <i
								class="fa fa-chevron-right"></i>
							</a>
						</div>
					</div>
				</aside>
			</section>


			<script src="assets/vendor/select2/select2.js"></script>
			<script
				src="assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
			<script
				src="assets/vendor/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>
			<script
				src="assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>



			<!-- Vendor -->
			<script src="assets/vendor/jquery/jquery.js"></script>
			<script
				src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
			<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
			<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
			<script
				src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
			<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
			<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>

			<!-- Specific Page Vendor -->
			<script src="assets/vendor/jquery-ui/js/jquery-ui-1.10.4.custom.js"></script>
			<script
				src="assets/vendor/jquery-ui-touch-punch/jquery.ui.touch-punch.js"></script>
			<script src="assets/vendor/jquery-appear/jquery.appear.js"></script>
			<script
				src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
			<script
				src="assets/vendor/jquery-easypiechart/jquery.easypiechart.js"></script>
			<script src="assets/vendor/flot/jquery.flot.js"></script>
			<script src="assets/vendor/flot-tooltip/jquery.flot.tooltip.js"></script>
			<script src="assets/vendor/flot/jquery.flot.pie.js"></script>
			<script src="assets/vendor/flot/jquery.flot.categories.js"></script>
			<script src="assets/vendor/flot/jquery.flot.resize.js"></script>
			<script src="assets/vendor/jquery-sparkline/jquery.sparkline.js"></script>
			<script src="assets/vendor/raphael/raphael.js"></script>
			<script src="assets/vendor/morris/morris.js"></script>
			<script src="assets/vendor/gauge/gauge.js"></script>
			<script src="assets/vendor/snap-svg/snap.svg.js"></script>
			<script src="assets/vendor/liquid-meter/liquid.meter.js"></script>
			<script src="assets/vendor/jqvmap/jquery.vmap.js"></script>
			<script src="assets/vendor/jqvmap/data/jquery.vmap.sampledata.js"></script>
			<script src="assets/vendor/jqvmap/maps/jquery.vmap.world.js"></script>
			<script
				src="assets/vendor/jqvmap/maps/continents/jquery.vmap.africa.js"></script>
			<script
				src="assets/vendor/jqvmap/maps/continents/jquery.vmap.asia.js"></script>
			<script
				src="assets/vendor/jqvmap/maps/continents/jquery.vmap.australia.js"></script>
			<script
				src="assets/vendor/jqvmap/maps/continents/jquery.vmap.europe.js"></script>
			<script
				src="assets/vendor/jqvmap/maps/continents/jquery.vmap.north-america.js"></script>
			<script
				src="assets/vendor/jqvmap/maps/continents/jquery.vmap.south-america.js"></script>

			<!-- Theme Base, Components and Settings -->
			<script src="assets/javascripts/theme.js"></script>

			<!-- Theme Custom -->
			<script src="assets/javascripts/theme.custom.js"></script>

			<!-- Theme Initialization Files -->
			<script src="assets/javascripts/theme.init.js"></script>


			<!-- Examples -->
			<script src="assets/javascripts/dashboard/examples.dashboard.js"></script>
</body>
</html>