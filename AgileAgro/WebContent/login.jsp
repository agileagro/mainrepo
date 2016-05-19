<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>AgileAgro | Login</title>
    <!-- Bootstrap -->
    
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Font Awesome -->

    <!-- Custom Theme Style -->
    <link href="css/custom.css" rel="stylesheet">
  </head>

  <body style="background-image:url('http://res.cloudinary.com/ddgydqg8v/image/upload/v1463040803/agile_agro_main_back.jpg');">
    <div class="">
      <a class="hiddenanchor" id="toregister"></a>
      <a class="hiddenanchor" id="tologin"></a>

      <div id="wrapper">
        <div id="login" class="form">
          <section class="login_content">
            <form action="UserLogin" method="post">
              <h1>AgileAgro | Login</h1>
              <div>
                <input type="text"  name="instance_id" class="form-control" placeholder="Agro Instance ID" required />
              </div>
              <div>
                <input type="text" name ="agrouser" class="form-control" placeholder="Username" required/>
              </div>
              <div>
                <input type="password" name="agropass" class="form-control" placeholder="Password" required/>
              </div>
              <div>
                <input id ="submitbtn" class="btn btn-default submit" type="submit" value="Log in">
              </div>
              <div class="clearfix"></div>
              <div class="separator">
                <div class="clearfix"></div>
                <br />
                <div>
                  <h1><i class="fa fa-leaf" style="font-size: 26px;"></i> Agile Agro | SAP</h1>

                  <p>Extensive Farming Solutions from SAP © 2016</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class=" form">
          
        </div>
      </div>
    </div>
  </body>
</html>