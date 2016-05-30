<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="fixed">
<head>

<!-- Basic -->
<meta charset="UTF-8">

<title>Alerts | AgileAgro</title>

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
							<div class="notification-title">Agro Alerts</div>

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
							<span class="name"><%=session.getAttribute("logged_user")%></span>

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
								<li class="nav-main"><a href="new_livestream.jsp"> <i
										class="fa fa-spin fa-circle-o-notch" aria-hidden="true"></i> <span>Live
											Stream Data </span>
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
					<h2>Agro Alerts</h2>

					<div class="right-wrapper pull-right"></div>
				</header>

				<!-- start: page -->
				<div class="row">

					<h3>Available Knowledge Base for this instance</h3><hr>
					<div class="table-responsive">
						<table
							 class="table table-bordered table-striped table-condensed mb-none">
							<tbody>
								<tr>
									<th width="98">Crop_Name</th>
									<th width="147">Min_Temperature</th>
									<th width="130">Max_Temperature</th>
									<th width="106">Soil_Moisture- warm,<br /> dry climate
									</th>
									<th width="106">Soil_Moisture-&nbsp; cool, humid<br />
										climate
									</th>
									<th width="103">Nitrogen(lb/ac)</th>
									<th width="118">Potassium(lb/ac)</th>
									<th width="90">Phosphorus</th>
									<th width="190">Soil Type</th>
									<th width="64">Min_PH</th>
									<th width="64">Max_PH</th>
									<th width="64">Weather</th>
									<th width="144">Min_Light_Intensity</th>
							
								</tr>
								<tr>
									<td>Corn</td>
									<td>22&deg;C&nbsp;</td>
									<td>25&deg;C&nbsp;</td>
									<td>50</td>
									<td>80</td>
									<td>153</td>
									<td>125</td>
									<td>266</td>
									<td>sandy loam</td>
									<td>5.8</td>
									<td>6.8</td>
									<td>70lux</td>
									<td>110lux</td>
								</tr>
								<tr>
									<td>Strawberry</td>
									<td>20&deg;C&nbsp;</td>
									<td>29&deg;C&nbsp;</td>
									<td>20</td>
									<td>30</td>
									<td>108</td>
									<td>110</td>
									<td>70</td>
									<td>acidic soil</td>
									<td>5.7</td>
									<td>6.5</td>
									<td>32Lux</td>
									<td>130Lux</td>
								</tr>
								<tr>
									<td>Wheat</td>
									<td>15&deg;C&nbsp;</td>
									<td>25&deg;C&nbsp;</td>
									<td>50</td>
									<td>55</td>
									<td>85</td>
									<td>80</td>
									<td>162</td>
									<td>light clay or heavy loam</td>
									<td>6</td>
									<td>6.5</td>
									<td>110Lux</td>
									<td>115Lux</td>
								</tr>
								<tr>
									<td>Potato</td>
									<td>15&deg;C&nbsp;</td>
									<td>20&deg;C&nbsp;</td>
									<td>30</td>
									<td>50</td>
									<td>270</td>
									<td>220</td>
									<td>100</td>
									<td>drained soil</td>
									<td>5.5</td>
									<td>7</td>
									<td>30Lux</td>
									<td>70Lux</td>
								</tr>
								<tr>
									<td>Onion</td>
									<td>20&deg;C&nbsp;</td>
									<td>25&deg;C&nbsp;</td>
									<td>45</td>
									<td>65</td>
									<td>134</td>
									<td>121</td>
									<td>209</td>
									<td>loamy</td>
									<td>5.5</td>
									<td>6.5</td>
									<td>300lux</td>
									<td>400lux</td>
								</tr>
								<tr>
									<td>Carrot</td>
									<td>15&deg;C&nbsp;</td>
									<td>18&deg;C&nbsp;</td>
									<td>55</td>
									<td>65</td>
									<td>20</td>
									<td>100</td>
									<td>100</td>
									<td>drained soil</td>
									<td>5.2</td>
									<td>5.7</td>
									<td>100lux</td>
									<td>140lux</td>
								</tr>
							</tbody>
						</table>



					</div>





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