<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Agile Agro - Crop Overview</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="css/custom.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-leaf"></i> <span>Agile Agro</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
                <img src="http://res.cloudinary.com/ddgydqg8v/image/upload/v1445523459/user-placeholder_hvt8xv.png" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
               
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home" style="margin-top : 150px;"></i> Home</a>

                  </li>
                  <li><a><i class="fa fa-edit"></i> Home </span></a>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> TBD </a>
                   
                  </li>
                  <li><a><i class="fa fa-table"></i> TBD</a>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Dashboard </a>

                  </li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
           
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">

          <div class="nav_menu">
            <nav class="" role="navigation">
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="http://res.cloudinary.com/ddgydqg8v/image/upload/v1445523459/user-placeholder_hvt8xv.png" alt="">John Doe
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;">  Profile</a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">Help</a>
                    </li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                    </li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">1</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image">
                                          <img src="images/img.jpg" alt="Profile Image" />
                                      </span>
                        <span>
                                          <span>John Smith</span>
                        <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                                          Crop Health updated
                                      </span>
                      </a>
                    </li>

                  </ul>
                </li>

              </ul>
            </nav>
          </div>

        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Crop Health Overview</h3>
              </div>

             
            </div>
            <div class="clearfix"></div>

            <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel" style="height:900px;">
                  <div class="x_title">
                    <h2></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
				  <!-- Place Guages here -->
				  <div class="status_guages" style="margin-left : 70px; margin-top : 50px;">
				  <div class="col-md-6 col-sm-12 col-xs-12">
				  <div id="bigfella_a" style="width:400px; height:320px"></div>
				  </div>
				 <div class="col-md-6 col-sm-12 col-xs-12">
				  <div id="bigfella_b" style="width:400px; height:320px"></div>
				  </div>
				  <div class="col-md-6 col-sm-12 col-xs-12">
				  <div id="bigfella_c" style="width:400px; height:320px"></div>
				  </div>
				  <div class="col-md-6 col-sm-12 col-xs-12">
				  <div id="bigfella_d" style="width:400px; height:320px"></div>
				  </div>
				  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Agile Agro | SAP 
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
	<!-- Guage Control -->
    <script src="vendors/justgage/raphael-2.1.4.min.js"></script>
	<!-- Guage Control -->
    <script src="vendors/justgage/justgage.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="js/custom.js"></script>
	
	<script>
						var sa = new JustGage({
						id: "bigfella_a",
						value: 20,
						min: 0,
						max: 100,
						title: "SECTOR - A",
						levelColorsGradient: false
					});
					var sb = new JustGage({
						id: "bigfella_b",
						value: 30,
						min: 0,
						max: 100,
						title: "SECTOR - B",
						levelColorsGradient: false
					});
					var sc = new JustGage({
						id: "bigfella_c",
						value: 70,
						min: 0,
						max: 100,
						title: "SECTOR - C",
						levelColorsGradient: false
					});
					var sd = new JustGage({
						id: "bigfella_d",
						value: 50,
						min: 0,
						max: 100,
						title: "SECTOR - D",
						levelColorsGradient: false
					});
				  </script>
	
  </body>
</html>