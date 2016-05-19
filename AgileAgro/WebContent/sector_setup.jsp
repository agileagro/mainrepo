<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>AgileAgro | Sector Setup</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		if (session.getAttribute("logged_admin") == null) {
			//response.sendRedirect("admin_login.jsp");
		}
	%>
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

			<!--Left Sidebar END -->
			
			
			
			
            <!-- /span-3 -->
            <div class="col-md-8">

                <!-- column 2 -->
                <h3><i class="glyphicon glyphicon-dashboard"></i> Configure Instance - <% out.print(request.getParameter("instance")); %></h3>

                <hr>

                <div class="row">
                    <!-- center left-->
                    <div class="alert alert-success">
                       Edit or configure instance details below.
                    </div>
					
					<!-- File Button --> 
					<form class="form-horizontal">
					<fieldset>

					
					<div class="panel panel-info">
      <div class="panel-heading">Update current knowledge base</div>
      <div class="panel-body">
					<div class="form-group">
					  <label class="col-md-4 control-label" for="kbase">Update Knowledge base</label>
					  <div class="col-md-4">
						<input id="kbase" name="kbase" class="input-file" type="file">
					  </div>
					</div>
					
						<!-- Button -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="submit"></label>
					  <div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-info">Upload</button>
					  </div>
					  
					</div>
					
					</div>
					</div>
					</fieldset>
					</form>
					
					
					<form class="form-horizontal">
					<fieldset>
					 <div class="panel panel-info">
      <div class="panel-heading">Create a new user</div>
      <div class="panel-body">
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="defaultuser">New Username</label>  
					  <div class="col-md-4">
					  <input id="defaultuser" name="defaultuser" type="text" placeholder="usernamce" class="form-control input-md" required="">
					  <span class="help-block">Provide New username</span>  
					  </div>
					</div>

					<!-- Password input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="defaultpassword">Password for New User</label>
					  <div class="col-md-4">
						<input id="defaultpassword" name="defaultpassword" type="password" placeholder="password" class="form-control input-md" required="">
						<span class="help-block">Enter a strong password</span>
					  </div>
					</div>

					<!-- Button -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="submit"></label>
					  <div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-info">Create user</button>
					  </div>
					  
					</div>
					</div>
					</div>
					
					</fieldset>
					</form>

				  

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