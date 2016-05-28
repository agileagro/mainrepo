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
							<div class="notification-title">Sector Wise Reports</div>

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

								<li class="nav-active"><a href="new_sectorwise.jsp"> <i
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
					<h2>Sector Wise Reports</h2>

					<div class="right-wrapper pull-right"></div>
				</header>

				<!-- start: page -->
			<h3>Sector 1 Status</h3><hr/>
			<div class="row">
							<div class="col-md-6 col-lg-6 col-xl-3">
								<section class="panel panel-featured-secondary appear-animation bounceInDown appear-animation-visible">
									<div class="panel-body bg-primary">
												<div class="widget-summary">
													<div class="widget-summary-col widget-summary-col-icon">
														<div class="summary-icon">
															<i class="fa fa-flag"></i>
														</div>
													</div>
													<div class="widget-summary-col">
														<div class="summary">
															<h4 class="title">Crop</h4>
															<div class="info">
																<strong class="amount">Wheat</strong>
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
								<section class="panel panel-featured-secondary appear-animation bounceInDown appear-animation-visible">
									<div class="panel-body bg-primary">
												<div class="widget-summary">
													<div class="widget-summary-col widget-summary-col-icon">
														<div class="summary-icon">
															<i class="fa fa-flag-checkered"></i>
														</div>
													</div>
													<div class="widget-summary-col">
														<div class="summary">
															<h4 class="title">Total Sensor units</h4>
															<div class="info">
																<strong class="amount">4</strong>
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
								<section class="panel panel-featured-secondary appear-animation bounceInDown appear-animation-visible">
									<div class="panel-body bg-primary">
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
								<section class="panel panel-featured-secondary appear-animation bounceInDown appear-animation-visible">
									<div class="panel-body bg-primary">
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
			<div class="row">
				<section class="panel">
   <header class="panel-heading">
      <div class="panel-actions">
         <a href="#" class="fa fa-caret-down"></a>
         <a href="#" class="fa fa-times"></a>
      </div>
      <h2 class="panel-title">Historic water usage Vs Rainfall</h2>
      <p class="panel-subtitle">Lengend: Blue-Water Usage, Cyan-Rainfall</p>
   </header>
   <div class="panel-body">
      <!-- Morris: Bar -->
      <div class="chart chart-md" id="morrisBar" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
         <svg height="350" version="1.1" width="1173" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative;">
            <desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.2</desc>
            <defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
            <text x="33.5" y="311" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,311H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="239.5" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">25</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,239.5H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="168" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,168H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="96.5" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">75</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,96.5H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="25" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,25H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="1097.909090909091" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">May</tspan>
            </text>
            <text x="997.7272727272727" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">April</tspan>
            </text>
            <text x="897.5454545454545" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Mar</tspan>
            </text>
            <text x="797.3636363636364" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Feb</tspan>
            </text>
            <text x="697.1818181818181" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Jan</tspan>
            </text>
            <text x="597" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Dec</tspan>
            </text>
            <text x="496.8181818181818" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Nov</tspan>
            </text>
            <text x="396.6363636363636" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Oct</tspan>
            </text>
            <text x="296.4545454545455" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Sep</tspan>
            </text>
            <text x="196.27272727272728" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Aug</tspan>
            </text>
            <text x="96.0909090909091" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Jul</tspan>
            </text>
            <rect x="58.52272727272727" y="282.4" width="36.06818181818182" height="28.600000000000023" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="97.5909090909091" y="225.2" width="36.06818181818182" height="85.80000000000001" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="158.70454545454547" y="25" width="36.06818181818182" height="286" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="197.77272727272728" y="239.5" width="36.06818181818182" height="71.5" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="258.8863636363636" y="139.4" width="36.06818181818182" height="171.6" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="297.95454545454544" y="239.5" width="36.06818181818182" height="71.5" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="359.0681818181818" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="398.1363636363636" y="210.9" width="36.06818181818182" height="100.1" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="459.25" y="53.60000000000002" width="36.06818181818182" height="257.4" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="498.3181818181818" y="253.8" width="36.06818181818182" height="57.19999999999999" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="559.4318181818182" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="598.5000000000001" y="268.1" width="36.06818181818182" height="42.89999999999998" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="659.6136363636364" y="168" width="36.06818181818182" height="143" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="698.6818181818182" y="282.4" width="36.06818181818182" height="28.600000000000023" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="759.7954545454545" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="798.8636363636364" y="239.5" width="36.06818181818182" height="71.5" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="859.9772727272727" y="225.2" width="36.06818181818182" height="85.80000000000001" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="899.0454545454546" y="282.4" width="36.06818181818182" height="28.600000000000023" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="960.159090909091" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="999.2272727272729" y="296.7" width="36.06818181818182" height="14.300000000000011" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="1060.3409090909092" y="139.4" width="36.06818181818182" height="171.6" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="1099.409090909091" y="288.12" width="36.06818181818182" height="22.879999999999995" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
         </svg>
         <div class="morris-hover morris-default-style" style="display: none; left: 55.0909px; top: 130px;">
            <div class="morris-hover-row-label">2004</div>
            <div class="morris-hover-point" style="color: #0088cc">
               Series A:
               10
            </div>
            <div class="morris-hover-point" style="color: #2baab1">
               Series B:
               30
            </div>
         </div>
      </div>
   </div>
</section>			
							
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
							
								
			</div>
			<h3>Sector 2 Status</h3><hr/>
			<div class="row">
							<div class="col-md-6 col-lg-6 col-xl-3">
								<section class="panel panel-featured-secondary appear-animation bounceInDown appear-animation-visible">
									<div class="panel-body bg-primary">
												<div class="widget-summary">
													<div class="widget-summary-col widget-summary-col-icon">
														<div class="summary-icon">
															<i class="fa fa-flag"></i>
														</div>
													</div>
													<div class="widget-summary-col">
														<div class="summary">
															<h4 class="title">Crop</h4>
															<div class="info">
																<strong class="amount">Corn</strong>
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
								<section class="panel panel-featured-secondary appear-animation bounceInDown appear-animation-visible">
									<div class="panel-body bg-primary">
												<div class="widget-summary">
													<div class="widget-summary-col widget-summary-col-icon">
														<div class="summary-icon">
															<i class="fa fa-flag-checkered"></i>
														</div>
													</div>
													<div class="widget-summary-col">
														<div class="summary">
															<h4 class="title">Total Sensor units</h4>
															<div class="info">
																<strong class="amount">5</strong>
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
								<section class="panel panel-featured-secondary appear-animation bounceInDown appear-animation-visible">
									<div class="panel-body bg-primary">
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
								<section class="panel panel-featured-secondary appear-animation bounceInDown appear-animation-visible">
									<div class="panel-body bg-primary">
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
																<strong class="amount">High</strong>
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
			<div class="row">
				<section class="panel">
   <header class="panel-heading">
      <div class="panel-actions">
         <a href="#" class="fa fa-caret-down"></a>
         <a href="#" class="fa fa-times"></a>
      </div>
      <h2 class="panel-title">Historic water usage Vs Rainfall</h2>
      <p class="panel-subtitle">Lengend: Blue-Water Usage, Cyan-Rainfall</p>
   </header>
   <div class="panel-body">
      <!-- Morris: Bar -->
      <div class="chart chart-md" id="morrisBar" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
         <svg height="350" version="1.1" width="1173" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative;">
            <desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.2</desc>
            <defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
            <text x="33.5" y="311" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,311H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="239.5" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">25</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,239.5H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="168" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,168H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="96.5" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">75</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,96.5H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="25" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,25H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="1097.909090909091" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">May</tspan>
            </text>
            <text x="997.7272727272727" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">April</tspan>
            </text>
            <text x="897.5454545454545" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Mar</tspan>
            </text>
            <text x="797.3636363636364" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Feb</tspan>
            </text>
            <text x="697.1818181818181" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Jan</tspan>
            </text>
            <text x="597" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Dec</tspan>
            </text>
            <text x="496.8181818181818" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Nov</tspan>
            </text>
            <text x="396.6363636363636" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Oct</tspan>
            </text>
            <text x="296.4545454545455" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Sep</tspan>
            </text>
            <text x="196.27272727272728" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Aug</tspan>
            </text>
            <text x="96.0909090909091" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Jul</tspan>
            </text>
            <rect x="58.52272727272727" y="282.4" width="36.06818181818182" height="28.600000000000023" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="97.5909090909091" y="225.2" width="36.06818181818182" height="85.80000000000001" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="158.70454545454547" y="25" width="36.06818181818182" height="286" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="197.77272727272728" y="239.5" width="36.06818181818182" height="71.5" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="258.8863636363636" y="139.4" width="36.06818181818182" height="171.6" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="297.95454545454544" y="239.5" width="36.06818181818182" height="71.5" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="359.0681818181818" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="398.1363636363636" y="210.9" width="36.06818181818182" height="100.1" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="459.25" y="53.60000000000002" width="36.06818181818182" height="257.4" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="498.3181818181818" y="253.8" width="36.06818181818182" height="57.19999999999999" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="559.4318181818182" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="598.5000000000001" y="268.1" width="36.06818181818182" height="42.89999999999998" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="659.6136363636364" y="168" width="36.06818181818182" height="143" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="698.6818181818182" y="282.4" width="36.06818181818182" height="28.600000000000023" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="759.7954545454545" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="798.8636363636364" y="239.5" width="36.06818181818182" height="71.5" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="859.9772727272727" y="225.2" width="36.06818181818182" height="85.80000000000001" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="899.0454545454546" y="282.4" width="36.06818181818182" height="28.600000000000023" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="960.159090909091" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="999.2272727272729" y="296.7" width="36.06818181818182" height="14.300000000000011" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="1060.3409090909092" y="139.4" width="36.06818181818182" height="171.6" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="1099.409090909091" y="288.12" width="36.06818181818182" height="22.879999999999995" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
         </svg>
         <div class="morris-hover morris-default-style" style="display: none; left: 55.0909px; top: 130px;">
            <div class="morris-hover-row-label">2004</div>
            <div class="morris-hover-point" style="color: #0088cc">
               Series A:
               10
            </div>
            <div class="morris-hover-point" style="color: #2baab1">
               Series B:
               30
            </div>
         </div>
      </div>
   </div>
</section>			
							
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
							
								
			</div>
			
			<h3>Sector 3 Status</h3><hr/>
			<div class="row">
							<div class="col-md-6 col-lg-6 col-xl-3">
								<section class="panel panel-featured-secondary appear-animation bounceIn appear-animation-visible">
									<div class="panel-body bg-primary">
												<div class="widget-summary">
													<div class="widget-summary-col widget-summary-col-icon">
														<div class="summary-icon">
															<i class="fa fa-flag"></i>
														</div>
													</div>
													<div class="widget-summary-col">
														<div class="summary">
															<h4 class="title">Crop</h4>
															<div class="info">
																<strong class="amount">Wheat</strong>
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
									<div class="panel-body bg-primary">
												<div class="widget-summary">
													<div class="widget-summary-col widget-summary-col-icon">
														<div class="summary-icon">
															<i class="fa fa-flag-checkered"></i>
														</div>
													</div>
													<div class="widget-summary-col">
														<div class="summary">
															<h4 class="title">Total Sensor units</h4>
															<div class="info">
																<strong class="amount">4</strong>
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
									<div class="panel-body bg-primary">
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
									<div class="panel-body bg-primary">
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
			<div class="row">
				<section class="panel">
   <header class="panel-heading">
      <div class="panel-actions">
         <a href="#" class="fa fa-caret-down"></a>
         <a href="#" class="fa fa-times"></a>
      </div>
      <h2 class="panel-title">Historic water usage Vs Rainfall</h2>
      <p class="panel-subtitle">Lengend: Blue-Water Usage, Cyan-Rainfall</p>
   </header>
   <div class="panel-body">
      <!-- Morris: Bar -->
      <div class="chart chart-md" id="morrisBar" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
         <svg height="350" version="1.1" width="1173" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative;">
            <desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.2</desc>
            <defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
            <text x="33.5" y="311" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,311H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="239.5" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">25</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,239.5H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="168" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,168H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="96.5" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">75</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,96.5H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="33.5" y="25" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan>
            </text>
            <path fill="none" stroke="#aaaaaa" d="M46,25H1148" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
            <text x="1097.909090909091" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">May</tspan>
            </text>
            <text x="997.7272727272727" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">April</tspan>
            </text>
            <text x="897.5454545454545" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Mar</tspan>
            </text>
            <text x="797.3636363636364" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Feb</tspan>
            </text>
            <text x="697.1818181818181" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Jan</tspan>
            </text>
            <text x="597" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Dec</tspan>
            </text>
            <text x="496.8181818181818" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Nov</tspan>
            </text>
            <text x="396.6363636363636" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Oct</tspan>
            </text>
            <text x="296.4545454545455" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Sep</tspan>
            </text>
            <text x="196.27272727272728" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Aug</tspan>
            </text>
            <text x="96.0909090909091" y="323.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)">
               <tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Jul</tspan>
            </text>
            <rect x="58.52272727272727" y="282.4" width="36.06818181818182" height="28.600000000000023" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="97.5909090909091" y="225.2" width="36.06818181818182" height="85.80000000000001" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="158.70454545454547" y="25" width="36.06818181818182" height="286" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="197.77272727272728" y="239.5" width="36.06818181818182" height="71.5" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="258.8863636363636" y="139.4" width="36.06818181818182" height="171.6" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="297.95454545454544" y="239.5" width="36.06818181818182" height="71.5" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="359.0681818181818" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="398.1363636363636" y="210.9" width="36.06818181818182" height="100.1" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="459.25" y="53.60000000000002" width="36.06818181818182" height="257.4" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="498.3181818181818" y="253.8" width="36.06818181818182" height="57.19999999999999" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="559.4318181818182" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="598.5000000000001" y="268.1" width="36.06818181818182" height="42.89999999999998" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="659.6136363636364" y="168" width="36.06818181818182" height="143" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="698.6818181818182" y="282.4" width="36.06818181818182" height="28.600000000000023" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="759.7954545454545" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="798.8636363636364" y="239.5" width="36.06818181818182" height="71.5" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="859.9772727272727" y="225.2" width="36.06818181818182" height="85.80000000000001" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="899.0454545454546" y="282.4" width="36.06818181818182" height="28.600000000000023" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="960.159090909091" y="96.5" width="36.06818181818182" height="214.5" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="999.2272727272729" y="296.7" width="36.06818181818182" height="14.300000000000011" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="1060.3409090909092" y="139.4" width="36.06818181818182" height="171.6" r="0" rx="0" ry="0" fill="#0088cc" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
            <rect x="1099.409090909091" y="288.12" width="36.06818181818182" height="22.879999999999995" r="0" rx="0" ry="0" fill="#2baab1" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
         </svg>
         <div class="morris-hover morris-default-style" style="display: none; left: 55.0909px; top: 130px;">
            <div class="morris-hover-row-label">2004</div>
            <div class="morris-hover-point" style="color: #0088cc">
               Series A:
               10
            </div>
            <div class="morris-hover-point" style="color: #2baab1">
               Series B:
               30
            </div>
         </div>
      </div>
   </div>
</section>			
							
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