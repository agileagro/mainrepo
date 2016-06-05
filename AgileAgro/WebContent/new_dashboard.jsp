<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Dashboard | AgileAgro</title>

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.custom.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
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
	
	
   <script type="text/javascript">
   var gaugeChart = AmCharts.makeChart("chartdiv", {
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

	setInterval(randomValue, 700);

	// set random value
	function randomValue() {
		var value = Math.round(28 + Math.random() * 2);
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
    </script>
    <script type="text/javascript">
	var gaugeChart1 = AmCharts.makeChart("chartdiv1", {
		"type" : "gauge",
		"faceBorderAlpha": 1,
		"fontSize": 15,
		"theme" : "default",
		"axes" : [ {
			"axisThickness" : 1,
			"axisAlpha" : 0.2,
			"tickAlpha" : 0.2,
			"valueInterval" : 2,
			"bands" : [ {
				"color" : "#84b761",
				"endValue" : 8,
				"startValue" : 6
			}, {
				"color" : "#fdd400",
				"endValue" : 1,
				"startValue" : 1
			}, {
				"color" : "#cc4748",
				"endValue" : 1,
				"innerRadius" : "95%",
				"startValue" : 1
			} ],
			"bottomText" : "0 ",
			"bottomTextYOffset" : -20,
			"endValue" : 14
		} ],
		"arrows" : [ {} ],
		"export" : {
			"enabled" : true
		}
	});

	setInterval(randomValue1, 2000);

	// set random value
	function randomValue1() {
		var value = Math.round(7 + Math.random() * 1);
		if (gaugeChart1) {
			if (gaugeChart1.arrows) {
				if (gaugeChart1.arrows[0]) {
					if (gaugeChart1.arrows[0].setValue) {
						gaugeChart1.arrows[0].setValue(value);
						gaugeChart1.axes[0].setBottomText("pH");
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
					<a  class="logo">
					
					<img src="http://res.cloudinary.com/ddgydqg8v/image/upload/v1464185772/imageedit_2_7504041153_triu7t.png" height="35"/>
					</a>
					
					<div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
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
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-leaf"></i> 
								
							</a>
			
							<div class="dropdown-menu notification-menu">
								<div class="notification-title">
									
									Agro Alerts
								</div>
			
								<div class="content">
									<ul>
										<li>
											<a href="#" class="clearfix">
												<div class="image">
													<i class="fa fa-envelope bg-danger"></i>
												</div>
												<span class="title">Harvesting approaching! Seactor 4.</span>
												<span class="message">Just now</span>
											</a>
										</li>
										
									</ul>
			
									<hr />
			
									<div class="text-right">
										
									</div>
								</div>
							</div>
						</li>
					</ul>
			
					<span class="separator"></span>
			
					<div id="userbox" class="userbox">
						<a href="#" data-toggle="dropdown">
							<figure class="profile-picture">
								<img src="http://res.cloudinary.com/ddgydqg8v/image/upload/v1445523459/user-placeholder_hvt8xv.png" alt="Joseph Doe" class="img-circle" data-lock-picture="http://res.cloudinary.com/ddgydqg8v/image/upload/v1445523459/user-placeholder_hvt8xv.png" />
							</figure>
							<div class="profile-info" data-lock-name="John Doe" data-lock-email="johndoe@okler.com">
								<span class="name"><%=session.getAttribute("logged_user") %></span>
								
							</div>
			
							<i class="fa custom-caret"></i>
						</a>
			
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="divider"></li>
									
								<li>
									<a role="menuitem" tabindex="-1" href="new_logout.jsp"><i class="fa fa-power-off"></i> Logout</a>
								</li>
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
						<div class="sidebar-title">
							Agro-Menu
						</div>
						<div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
							<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
						</div>
					</div>
				
					<div class="nano">
						<div class="nano-content">
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-main">
									<li class="nav-active">
										<a href="new_dashboard.jsp">
											<i class="fa fa-home" aria-hidden="true"></i>
											<span>Agro Dashboard</span>
										</a>
									</li>
									
									<li class="nav-main">
									  <a href="new_sectorwise.jsp">
											<i class="fa fa-bar-chart-o" aria-hidden="true"></i>
											<span>Sector-wise Reports</span>
										</a>
										
										
									</li>
                                    <li class="nav-main">
										<a href="new_cropwise.jsp">
											<i class="fa fa-tasks" aria-hidden="true"></i>
											<span>Crop-wise Reports</span>
										</a>
										
										
									</li>
                                    <li class="nav-main">
										<a href="new_alerts.jsp">
											<i class="fa fa-bolt" aria-hidden="true"></i>
											<span>Alerts</span>
										</a>
										
										
									</li>
									<li class="nav-main">
										<a href="new_sensorhealth.jsp">
											<i class="fa fa-heart" aria-hidden="true"></i>
											<span>Sensor Health</span>
										</a>
										
										
									</li>
									<li class="nav-main"><a href="new_livestream.jsp"> <i
										class="fa fa-spin fa-circle-o-notch" aria-hidden="true"></i> <span>Live Stream Data
											</span>
								</a></li>
									<li>
									  
								    </li>
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
										<li><a href="new_requestkb.jsp">Request Knowledge Base Update</a></li>
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
						<h2>Agro Dashboard</h2>
					
						<div class="right-wrapper pull-right">
							
					
							
						</div>
					</header>

					<!-- start: page -->
								
							<div class="row">
							<div class="col-md-6 col-lg-6 col-xl-3">
								<section class="panel panel-featured-secondary appear-animation bounceIn appear-animation-visible">
									<div class="panel-body bg-tertiary">
												<div class="widget-summary">
													<div class="widget-summary-col widget-summary-col-icon">
														<div class="summary-icon">
															<i class="fa fa-flag"></i>
														</div>
													</div>
													<div class="widget-summary-col">
														<div class="summary">
															<h4 class="title">Total Area</h4>
															<div class="info">
																<strong class="amount">1200 Ha</strong>
															</div>
														</div>
														<div class="summary-footer">
															<a class="text-uppercase"></a>
														</div>
													</div>
												</div>
											</div>
								</section>
							</div>
							<div class="col-md-6 col-lg-6 col-xl-3">
								<section class="panel panel-featured-secondary appear-animation bounceIn appear-animation-visible">
									<div class="panel-body bg-tertiary">
												<div class="widget-summary">
													<div class="widget-summary-col widget-summary-col-icon">
														<div class="summary-icon">
															<i class="fa fa-flag-checkered"></i>
														</div>
													</div>
													<div class="widget-summary-col">
														<div class="summary">
															<h4 class="title">Under Surveillance</h4>
															<div class="info">
																<strong class="amount">1000 Ha</strong>
															</div>
														</div>
														<div class="summary-footer">
															
														</div>
													</div>
												</div>
											</div>
								</section>
							</div>
							<div class="col-md-6 col-lg-6 col-xl-3">
								<section class="panel panel-featured-secondary appear-animation bounceIn appear-animation-visible">
									<div class="panel-body bg-tertiary">
												<div class="widget-summary">
													<div class="widget-summary-col widget-summary-col-icon">
														<div class="summary-icon">
															<i class="fa fa-flask"></i>
														</div>
													</div>
													<div class="widget-summary-col">
														<div class="summary">
															<h4 class="title">Humidity</h4>
															<div class="info">
																<strong class="amount">Medium</strong>
															</div>
														</div>
														<div class="summary-footer">
															
														</div>
													</div>
												</div>
											</div>
								</section>
							</div>
							<div class="col-md-6 col-lg-6 col-xl-3">
								<section class="panel panel-featured-secondary appear-animation bounceIn appear-animation-visible">
									<div class="panel-body bg-tertiary">
												<div class="widget-summary">
													<div class="widget-summary-col widget-summary-col-icon">
														<div class="summary-icon">
															<i class="fa fa-cloud"></i>
														</div>
													</div>
													<div class="widget-summary-col">
														<div class="summary">
															<h4 class="title">Soil Moisture</h4>
															<div class="info">
																<strong class="amount">Optimum</strong>
															</div>
														</div>
														<div class="summary-footer">
														
														</div>
													</div>
												</div>
											</div>
								</section>
							</div>
						</div>
                     
					 <!-- Begin the gauge and circular charts -->
					 <div class="row">
							
							<div class="col-lg-6">
							

								<div class="row">
									<div class="col-md-12">
										<section class="panel">
											<header class="panel-heading">
												<div class="panel-actions">
													<a href="#" class="fa fa-caret-down"></a>
													<a href="#" class="fa fa-times"></a>
												</div>
						
												<h2 class="panel-title">Nitrogen - Pottasium Availability in soil </h2>
										
											</header>
											<div class="panel-body">
												<div class="row text-center">
													<div class="col-md-6">
														<div class="circular-bar">
															<div class="circular-bar-chart" data-percent='85' data-plugin-options='{ "barColor": "#0088CC", "delay": 1200 }'>
																<strong>Nitrogen</strong>
																<label><span class="percent">85</span>%</label>
															</div>
														</div>
													</div>
													<div class="col-md-6">
														<div class="circular-bar">
															<div class="circular-bar-chart" data-percent='60' data-plugin-options='{ "barColor": "#2BAAB1", "delay": 600 }'>
																<strong>Pottasium</strong>
																<label><span class="percent">60</span>%</label>
															</div>
														</div>
													</div>
												</div>
											</div>
										</section>
									</div>
								</div>
							</div>
							
						<div class="col-lg-6">
							

								<div class="row">
									<div class="col-md-12">
										<section class="panel">
											<header class="panel-heading">
												<div class="panel-actions">
													<a href="#" class="fa fa-caret-down"></a>
													<a href="#" class="fa fa-times"></a>
												</div>
						
												<h2 class="panel-title">Light Intensity - Phosphorous Availability in Soil </h2>
										
											</header>
											<div class="panel-body">
												<div class="row text-center">
													<div class="col-md-6">
														<div class="circular-bar">
															<div class="circular-bar-chart" data-percent='85' data-plugin-options='{ "barColor": "#0088CC", "delay": 300 }'>
																<strong>Light intensity</strong>
																<label><span class="percent">85</span> Lux</label>
															</div>
														</div>
													</div>
													<div class="col-md-6">
														<div class="circular-bar">
															<div class="circular-bar-chart" data-percent='60' data-plugin-options='{ "barColor": "#2BAAB1", "delay": 600 }'>
																<strong>Phosphorous</strong>
																<label><span class="percent">60</span>%</label>
															</div>
														</div>
													</div>
												</div>
											</div>
										</section>
									</div>
								</div>
							</div>	
					
						 <div class="row">
							
							<div class="col-lg-6">
							

								<div class="row">
									<div class="col-md-12">
										<section class="panel">
											<header class="panel-heading">
												<div class="panel-actions">
													<a href="#" class="fa fa-caret-down"></a>
													<a href="#" class="fa fa-times"></a>
												</div>
						
												<h2 class="panel-title">Water Usage Today vs Previous Day </h2>
										
											</header>
											<div class="panel-body">
												<div class="row text-center">
													<div class="col-md-6">
														<div class="circular-bar">
															<div class="circular-bar-chart" data-percent='95' data-plugin-options='{ "barColor": "#0088CC", "delay": 300 }'>
																<strong>Today's</strong>
																<label><span class="percent">95</span>L</label>
															</div>
														</div>
													</div>
													<div class="col-md-6">
														<div class="circular-bar">
															<div class="circular-bar-chart" data-percent='60' data-plugin-options='{ "barColor": "#2BAAB1", "delay": 600 }'>
																<strong>Previous day</strong>
																<label><span class="percent">60</span>L</label>
															</div>
														</div>
													</div>
												</div>
											</div>
										</section>
									</div>
								</div>
							</div>
							
							<div class="col-lg-6">
								
								<div class="row">
									<div class="col-md-12">
										<section class="panel">
											<header class="panel-heading">
												<div class="panel-actions">
													<a href="#" class="fa fa-caret-down"></a>
													<a href="#" class="fa fa-times"></a>
												</div>
						
												<h2 class="panel-title">Average pH | Temperature</h2>
											</header>
											<div class="panel-body">
												<div class="row ">
													<div class="col-md-6">
													<div id="chartdiv" style="width: 100%; height: 200px; background-color: #FFFFFF;"></div>
													<h4>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Temperature</h4>
													</div>
													<div class="col-md-6">
														<div id="chartdiv1" style="width: 100%; height: 200px; background-color: #FFFFFF;"></div>
														<h4>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pH Level</h4>
													</div>
												</div>
											</div>
										</section>
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="row">
							<div class="col-md-12">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="fa fa-caret-down"></a>
											<a href="#" class="fa fa-times"></a>
										</div>
						
										<h2 class="panel-title">Current Weather</h2>
										<p class="panel-subtitle">Weather Information for today</p>
									</header>
									<div class="panel-body">
									<iframe id="forecast_embed" type="text/html" frameborder="0" height="245" width="100%" src="http://forecast.io/embed/#lat=12.971599&lon=77.594563&name=Bangalore&color=#2baab1&units=uk"> </iframe>
						
									</div>
								</section>
							</div>
						</div>
						
						
					 
					
						
					 
					 
					 
				
					<!-- end: page -->
				</section>
			
			</div>

			<aside id="sidebar-right" class="sidebar-right">
				<div class="nano">
					<div class="nano-content">
						<a href="#" class="mobile-close visible-xs">
						 <i class="fa fa-chevron-right"></i>
						</a>					</div>
				</div>
			</aside>
		</section>

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="assets/vendor/jquery-ui/js/jquery-ui-1.10.4.custom.js"></script>
		<script src="assets/vendor/jquery-ui-touch-punch/jquery.ui.touch-punch.js"></script>
		<script src="assets/vendor/jquery-appear/jquery.appear.js"></script>
		<script src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
		<script src="assets/vendor/jquery-easypiechart/jquery.easypiechart.js"></script>
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
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.africa.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.asia.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.australia.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.europe.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.north-america.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.south-america.js"></script>
		
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