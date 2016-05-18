<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>AgileAgro | Administration Console Logged out</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body
	style="background-image: url('http://res.cloudinary.com/ddgydqg8v/image/upload/v1444589525/bg001_fkawcq.jpg');">
	<%
		session.invalidate();
	%>
	
	<div class="container">
		<div id="loginbox" style="margin-top: 200px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Session Terminated | Admin Console</div>

				</div>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					<form id="loginform" class="form-horizontal" role="form"
						action="admin_login.jsp">
						
						<div class="alert alert-info">
							<strong>You have successfully logged out of the Agro Admin Console!</strong> 
						</div>
						<span>Logout timestamp :<%=new java.util.Date()%></span>



						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->
							<div class="col-sm-12 controls">
								<input type="submit" class="btn btn-info" value="Login Again">
							</div>
						</div>


						<div class="form-group">
							<div class="col-md-12 control">
								<div
									style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
									<strong> AgileAgro | SAP </strong>

									<footer> Large-scale agro solutions powered by SAP. </footer>

								</div>
							</div>
						</div>
					</form>



				</div>
			</div>
		</div>

	</div>



</body>