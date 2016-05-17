<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd
<html lang="en">
<head>
    <title>AgileAgro | Instances</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <!-- Navbar -->
    <div id="top-nav" class="navbar navbar-inverse navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-toggle"></span>
                </button>
                <a class="navbar-brand" href="console_home.jsp">AgileAgro | Administration Console</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown">
                        <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
                            <i class="glyphicon glyphicon-user"></i> Admin <span class="caret"></span>
                        </a>
                        <ul id="g-account-menu" class="dropdown-menu" role="menu">
                            <li><a href="admin_logout.jsp"><i class="glyphicon glyphicon-lock"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /Navbar -->
    <!-- Main -->
    <div class="container">

        <!-- upper section -->
        <div class="row">
		
		
		
		<!--Left Sidebar -->
            <div class="col-sm-2">
			
                <!-- left -->
                <h3><i class="glyphicon glyphicon-briefcase"></i> Settings</h3>
                <hr>

                  <ul class="nav nav-stacked">
                    <li><a href="console_home.jsp" ><i class="glyphicon glyphicon-home"></i> Admin Home</a>
                    </li>
                    <li><a href="instances.jsp"><i class="glyphicon glyphicon-link"></i> Instances</a>
                    </li>
					<li><a href="create_instance.jsp"><i class="glyphicon glyphicon-new-window"></i> Create Instance</a>
                    </li>
					<li><a href="admin_logout.jsp"><i class="glyphicon glyphicon-off"></i> Logout</a>
                    </li>
					
                </ul>

                <hr>

            </div>
			<!--Left Sidebar END -->
			
			
			
			
            <!-- /span-3 -->
            <div class="col-md-8">

                <!-- column 2 -->
                <h3><i class="glyphicon glyphicon-dashboard"></i> Configure Current Instances</h3>

                <hr>

                <div class="row">
                    <!-- center left-->
                    <div class="alert alert-info">
                        Click on an instance id to configure the same
                    </div>
                    <table class="table table-hover">
                        <tr>
                            <th>#</th>
                            <th>Instance ID</th>
                            <th>Name</th>
                            <th>Location</th>
							<th>Total area</th>
							<th>Under Surveillance</th>	
							<th>Status</th>
						</tr>
                        <thead>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><a href="configure_instance.html">AG_201601501</a></td>
                                <td>Uniliver Main</td>
								<td>India</td>
                                <td>2600Ha</td>
								<td>19600Ha</td>
								<td>Area Setup</td>
								
                            </tr>
                        </tbody>
                    </table>

                </div>
                <!--/row-->
            </div>
            <!--/col-span-9-->

        </div>
        <!--/row-->
        <!-- /upper section -->

        <!-- lower section -->

    </div>
    <!--/container-->
    <!-- /Main -->


    <footer class="text-center">AgileAgro consolidated Admin control panel. </footer>


    <div class="modal" id="addWidgetModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">Add Widget</h4>
                </div>
                <div class="modal-body">
                    <p>Add a widget stuff here..</p>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn">Close</a>
                    <a href="#" class="btn btn-primary">Save changes</a>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dalog -->
    </div>
    <!-- /.modal -->
</body>

</html>