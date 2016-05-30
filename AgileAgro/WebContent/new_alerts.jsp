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
								<li class="nav-active"><a href="new_alerts.jsp"> <i
										class="fa fa-bolt" aria-hidden="true"></i> <span>Alerts</span>
								</a></li>
								<li class="nav-main"><a href="new_sensorhealth.jsp"> <i
										class="fa fa-heart" aria-hidden="true"></i> <span>Sensor
											Health</span>
								</a></li>
								<li class="nav-main"><a href="new_livestream.jsp"> <i
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
					<h2>Agro Alerts</h2>

					<div class="right-wrapper pull-right"></div>
				</header>

				<!-- start: page -->
				<div class="row">

					<div class="alert alert-danger ">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">x</button>

						<strong>Critical warnings found. Please review!</strong>

					</div>


					<section class="panel ">
						<header class="panel-heading">
							<div class="panel-actions">
								<a href="#" class="fa fa-caret-down"></a> <a href="#"
									class="fa fa-times"></a>
							</div>

							<h2 class="panel-title">Detailed Alerts and Notifications</h2>
						</header>
						<div class="panel-body">

							<div class="table-responsive">
								<table
									class="table table-bordered table-striped table-condensed mb-none">
									<thead>
										<tr>
											<th>#</th>
											<th>Alert</th>
											<th>Status</th>
											<th>Current value</th>
											<th>Sector #</th>
											<th>Time</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>pH Value too High at Sector 1</td>
											<td><button class="btn-xs btn-danger">critical</button></td>
											<td>8.6</td>
											<td>Sector 1</td>
											<td>Today</td>
											<td>Supply with Aluminium manganese-11kg<br></td>
										</tr>
										<tr>
											<td>2</td>
											<td>Humidity Sensor expires soon</td>
											<td><button class="btn-xs btn-danger">critical</button></td>
											<td>Expires in June</td>
											<td>Sector 2</td>
											<td>Today</td>
											<td>Order online <a href="http://www.amazon.in" class="btn-xs btn-primary">Order now</a><br></td>
										</tr>
										<tr>
											<td>3</td>
											<td>Nitrogen content low</td>
											<td><button class="btn-xs btn-danger">critical</button></td>
											<td>65</td>
											<td>Sector 1</td>
											<td>Today</td>
											<td>Supply Ammonium Nitrate- 15 kg<br></td>
										</tr>
										<tr>
											<td>4</td>
											<td>Soil moisture Critically low</td>
											<td><button class="btn-xs btn-danger">critical</button></td>
											<td>77<br></td>
											<td>Sector 2</td>
											<td>Today<br></td>
											<td>Start irrigation- 105 Ltr of water<br></td>
										</tr>
										<tr>
											<td>5</td>
											<td>Temperature sensor not working</td>
											<td><button class="btn-xs btn-danger">critical</button></td>
											<td>Expired today</td>
											<td>Sector 1</td>
											<td>Today<br></td>
											<td>Get it online<a href="http://www.amazon.in" class="btn-xs btn-primary">Order now</a></td>
										</tr>
										<tr>
											<td>6</td>
											<td>pH value high<br></td>
											<td><button class="btn-xs btn-danger">critical</button></td>
											<td>7.9<br></td>
											<td>Sector 2</td>
											<td>Yesterday<br></td>
											<td>Done<br></td>
										</tr>
										<tr>
											<td>7</td>
											<td>Soil moisture critically low<br></td>
											<td><button class="btn-xs btn-danger">critical</button></td>
											<td>71<br></td>
											<td>Sector 1</td>
											<td>Yesterday<br></td>
											<td>Done<br></td>
										</tr>
										<tr>
											<td>8</td>
											<td>Harvesting approaching</td>
											<td><button class="btn-xs btn-success">information</button></td>
											<td>Expected in 7 days</td>
											<td>Sector 1</td>
											<td>26-05-2016<br></td>
											<td>harvest June 4nd week<br></td>
										</tr>
										<tr>
											<td>9</td>
											<td>Strong wind</td>
											<td><button class="btn-xs btn-success">information</button></td>
											<td>110kmph<br></td>
											<td>Sector 2</td>
											<td>26-05-2016<br></td>
											<td>Expected rains. Minimize irrigation in sectors 1 and 3<br></td>
										</tr>
										<tr>
											<td>10</td>
											<td>Potassium content getting low<br></td>
											<td><button class="btn-xs btn-success">information</button></td>
											<td>30<br></td>
											<td>Sector 2</td>
											<td>25-05-2016<br></td>
											<td>Supply with potassium Chloride-9kg<br></td>
										</tr>
										<tr>
											<td>11</td>
											<td>Heavy rain<br></td>
											<td><button class="btn-xs btn-success">information</button></td>
											<td>Neutral soil moisture</td>
											<td>Sector 1</td>
											<td>23-05-2016<br></td>
											<td>Minimize irrigation for 2 days<br></td>
										</tr>
										<tr>
											<td>12</td>
											<td>Phosphoros content getting low</td>
											<td><button class="btn-xs btn-success">information</button></td>
											<td>45</td>
											<td>Sector 1</td>
											<td>23-05-2016</td>
											<td>Supply with Phosphorous Trichoride- 70kg</td>
										</tr>
										<tr>
											<td>13</td>
											<td>Strong wind</td>
											<td><button class="btn-xs btn-success">information</button></td>
											<td>90kmph</td>
											<td>Sector 1</td>
											<td>22-05-2016</td>
											<td>Expects rain. Minimize irrigation in sector 1 and 2</td>
										</tr>
										<tr>
											<td>14</td>
											<td>Harvesting approaching</td>
											<td><button class="btn-xs btn-danger">critical</button></td>
											<td>Expected in 2 weeks</td>
											<td>Sector 2</td>
											<td>22-05-2016</td>
											<td>harvest June 2nd week</td>
										</tr>
										<tr>
											<td>15</td>
											<td>Soil moisture critically low</td>
											<td><button class="btn-xs btn-danger">critical</button></td>
											<td>69</td>
											<td>Sector 2</td>
											<td>21-05-2016</td>
											<td>Start irrigation- 75 Ltr of water</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>
					</section>






				</div>






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