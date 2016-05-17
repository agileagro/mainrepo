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
                <h3><i class="glyphicon glyphicon-dashboard"></i> Create New Agro Instance</h3>

                <hr>

                <div class="row">
                    <!-- center left-->
                    <div class="alert alert-info">
                        To setup a new instance, start by providing the details below. 
                    </div>
                  
					<form class="form-horizontal">
		<fieldset>

<!-- Form Name -->
<legend></legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="instancename">Instance Name</label>  
  <div class="col-md-4">
  <input id="instancename" name="instancename" type="text" placeholder="Enter instance name" class="form-control input-md" required="">
  <span class="help-block">Any name to identify the instance.</span>  
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="country">Country</label>
  <div class="col-md-4">
    <select id="country" name="country" class="form-control">
      <option value="0">-Select Country-</option>
      <option value="Afghanistan">Afghanistan</option>
      <option value="Albania">Albania</option>
      <option value="Algeria">Algeria</option>
      <option value="Andorra">Andorra</option>
      <option value="Angola">Angola</option>
      <option value="Antigua and Barbuda">Antigua and Barbuda</option>
      <option value="Argentina">Argentina</option>
      <option value="Armenia">Armenia</option>
      <option value="Aruba">Aruba</option>
      <option value="Australia">Australia</option>
      <option value="Austria">Austria</option>
      <option value="Azerbaijan">Azerbaijan</option>
      <option value="Bahamas">Bahamas</option>
      <option value="Bahrain">Bahrain</option>
      <option value="Bangladesh">Bangladesh</option>
      <option value="Barbados">Barbados</option>
      <option value="Belarus">Belarus</option>
      <option value="Belgium">Belgium</option>
      <option value="Belize">Belize</option>
      <option value="Benin">Benin</option>
      <option value="Bhutan">Bhutan</option>
      <option value="Bolivia">Bolivia</option>
      <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
      <option value="Botswana">Botswana</option>
      <option value="Brazil">Brazil</option>
      <option value="Brunei">Brunei</option>
      <option value="Bulgaria">Bulgaria</option>
      <option value="Burkina Faso">Burkina Faso</option>
      <option value="Burma">Burma</option>
      <option value="Burundi">Burundi</option>
      <option value="Cambodia">Cambodia</option>
      <option value="Cameroon">Cameroon</option>
      <option value="Canada">Canada</option>
      <option value="Cape Verde">Cape Verde</option>
      <option value="Central African Republic">Central African Republic</option>
      <option value="Chad">Chad</option>
      <option value="Chile">Chile</option>
      <option value="China">China</option>
      <option value="Colombia">Colombia</option>
      <option value="Comoros">Comoros</option>
      <option value="Congo Democratic Republic of the">Congo Democratic Republic of the</option>
      <option value="Congo Republic of the">Congo Republic of the</option>
      <option value="Costa Rica">Costa Rica</option>
      <option value="Cote dIvoire">Cote dIvoire</option>
      <option value="Croatia">Croatia</option>
      <option value="Cuba">Cuba</option>
      <option value="Curacao">Curacao</option>
      <option value="Cyprus">Cyprus</option>
      <option value="Czech Republic">Czech Republic</option>
      <option value="Denmark">Denmark</option>
      <option value="Djibouti">Djibouti</option>
      <option value="Dominica">Dominica</option>
      <option value="Dominican Republic">Dominican Republic</option>
      <option value="Ecuador">Ecuador</option>
      <option value="Egypt">Egypt</option>
      <option value="El Salvador">El Salvador</option>
      <option value="Equatorial Guinea">Equatorial Guinea</option>
      <option value="Eritrea">Eritrea</option>
      <option value="Estonia">Estonia</option>
      <option value="Ethiopia">Ethiopia</option>
      <option value="Fiji">Fiji</option>
      <option value="Finland">Finland</option>
      <option value="France">France</option>
      <option value="Gabon">Gabon</option>
      <option value="Gambia">Gambia</option>
      <option value="Georgia">Georgia</option>
      <option value="Germany">Germany</option>
      <option value="Ghana">Ghana</option>
      <option value="Greece">Greece</option>
      <option value="Grenada">Grenada</option>
      <option value="Guatemala">Guatemala</option>
      <option value="Guinea">Guinea</option>
      <option value="Guinea-Bissau">Guinea-Bissau</option>
      <option value="Guyana">Guyana</option>
      <option value="Haiti">Haiti</option>
      <option value="Holy See">Holy See</option>
      <option value="Honduras">Honduras</option>
      <option value="Hong Kong">Hong Kong</option>
      <option value="Hungary">Hungary</option>
      <option value="Iceland">Iceland</option>
      <option value="India">India</option>
      <option value="Indonesia">Indonesia</option>
      <option value="Iran">Iran</option>
      <option value="Iraq">Iraq</option>
      <option value="Ireland">Ireland</option>
      <option value="Israel">Israel</option>
      <option value="Italy">Italy</option>
      <option value="Jamaica">Jamaica</option>
      <option value="Japan">Japan</option>
      <option value="Jordan">Jordan</option>
      <option value="Kazakhstan">Kazakhstan</option>
      <option value="Kenya">Kenya</option>
      <option value="Kiribati">Kiribati</option>
      <option value="North Korea">North Korea</option>
      <option value="South Korea">South Korea</option>
      <option value="Kosovo">Kosovo</option>
      <option value="Kuwait">Kuwait</option>
      <option value="Kyrgyzstan">Kyrgyzstan</option>
      <option value="Laos">Laos</option>
      <option value="Latvia">Latvia</option>
      <option value="Lebanon">Lebanon</option>
      <option value="Lesotho">Lesotho</option>
      <option value="Liberia">Liberia</option>
      <option value="Libya">Libya</option>
      <option value="Liechtenstein">Liechtenstein</option>
      <option value="Lithuania">Lithuania</option>
      <option value="Luxembourg">Luxembourg</option>
      <option value="Macau">Macau</option>
      <option value="Macedonia">Macedonia</option>
      <option value="Madagascar">Madagascar</option>
      <option value="Malawi">Malawi</option>
      <option value="Malaysia">Malaysia</option>
      <option value="Maldives">Maldives</option>
      <option value="Mali">Mali</option>
      <option value="Malta">Malta</option>
      <option value="Marshall Islands">Marshall Islands</option>
      <option value="Mauritania">Mauritania</option>
      <option value="Mauritius">Mauritius</option>
      <option value="Mexico">Mexico</option>
      <option value="Micronesia">Micronesia</option>
      <option value="Moldova">Moldova</option>
      <option value="Monaco">Monaco</option>
      <option value="Mongolia">Mongolia</option>
      <option value="Montenegro">Montenegro</option>
      <option value="Morocco">Morocco</option>
      <option value="Mozambique">Mozambique</option>
      <option value="Namibia">Namibia</option>
      <option value="Nauru">Nauru</option>
      <option value="Nepal">Nepal</option>
      <option value="Netherlands">Netherlands</option>
      <option value="Netherlands Antilles">Netherlands Antilles</option>
      <option value="New Zealand">New Zealand</option>
      <option value="Nicaragua">Nicaragua</option>
      <option value="Niger">Niger</option>
      <option value="Nigeria">Nigeria</option>
      <option value="North Korea">North Korea</option>
      <option value="Norway">Norway</option>
      <option value="Oman">Oman</option>
      <option value="Pakistan">Pakistan</option>
      <option value="Palau">Palau</option>
      <option value="Palestinian Territories">Palestinian Territories</option>
      <option value="Panama">Panama</option>
      <option value="Papua New Guinea">Papua New Guinea</option>
      <option value="Paraguay">Paraguay</option>
      <option value="Peru">Peru</option>
      <option value="Philippines">Philippines</option>
      <option value="Poland">Poland</option>
      <option value="Portugal">Portugal</option>
      <option value="Qatar">Qatar</option>
      <option value="Romania">Romania</option>
      <option value="Russia">Russia</option>
      <option value="Rwanda">Rwanda</option>
      <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
      <option value="Saint Lucia">Saint Lucia</option>
      <option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
      <option value="Samoa">Samoa</option>
      <option value="San Marino">San Marino</option>
      <option value="Sao Tome and Principe">Sao Tome and Principe</option>
      <option value="Saudi Arabia">Saudi Arabia</option>
      <option value="Senegal">Senegal</option>
      <option value="Serbia">Serbia</option>
      <option value="Seychelles">Seychelles</option>
      <option value="Sierra Leone">Sierra Leone</option>
      <option value="Singapore">Singapore</option>
      <option value="Sint Maarten">Sint Maarten</option>
      <option value="Slovakia">Slovakia</option>
      <option value="Slovenia">Slovenia</option>
      <option value="Solomon Islands">Solomon Islands</option>
      <option value="Somalia">Somalia</option>
      <option value="South Africa">South Africa</option>
      <option value="South Korea">South Korea</option>
      <option value="South Sudan">South Sudan</option>
      <option value="Spain">Spain</option>
      <option value="Sri Lanka">Sri Lanka</option>
      <option value="Sudan">Sudan</option>
      <option value="Suriname">Suriname</option>
      <option value="Swaziland">Swaziland</option>
      <option value="Sweden">Sweden</option>
      <option value="Switzerland">Switzerland</option>
      <option value="Syria">Syria</option>
      <option value="Taiwan">Taiwan</option>
      <option value="Tajikistan">Tajikistan</option>
      <option value="Tanzania">Tanzania</option>
      <option value="Thailand">Thailand</option>
      <option value="Timor-Leste">Timor-Leste</option>
      <option value="Togo">Togo</option>
      <option value="Tonga">Tonga</option>
      <option value="Trinidad and Tobago">Trinidad and Tobago</option>
      <option value="Tunisia">Tunisia</option>
      <option value="Turkey">Turkey</option>
      <option value="Turkmenistan">Turkmenistan</option>
      <option value="Tuvalu">Tuvalu</option>
      <option value="Uganda">Uganda</option>
      <option value="Ukraine">Ukraine</option>
      <option value="United Arab Emirates">United Arab Emirates</option>
      <option value="United Kingdom">United Kingdom</option>
      <option value="Uruguay">Uruguay</option>
      <option value="Uzbekistan">Uzbekistan</option>
      <option value="Vanuatu">Vanuatu</option>
      <option value="Venezuela">Venezuela</option>
      <option value="Vietnam">Vietnam</option>
      <option value="Yemen">Yemen</option>
      <option value="Zambia">Zambia</option>
      <option value="Zimbabwe">Zimbabwe</option>
    </select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="organisationname">Organisation Name </label>  
  <div class="col-md-4">
  <input id="organisationname" name="organisationname" type="text" placeholder="Official organisation name" class="form-control input-md" required="">
  <span class="help-block">Enter a valid organisation name</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="totalarea">Total Area</label>  
  <div class="col-md-4">
  <input id="totalarea" name="totalarea" type="text" placeholder="Area" class="form-control input-md" required="">
  <span class="help-block">Enter total area</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="areaunder">Area Under surveillance </label>  
  <div class="col-md-4">
  <input id="areaunder" name="areaunder" type="text" placeholder="Area" class="form-control input-md" required="">
  <span class="help-block">Enter the area that will come under application surveillance</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="sectornumber">Number of sectors </label>  
  <div class="col-md-4">
  <input id="sectornumber" name="sectornumber" type="number" placeholder="Sectors" class="form-control input-md" required="">
  <span class="help-block">Enter the number of sectors</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="location">Location</label>  
  <div class="col-md-4">
  <input id="location" name="location" type="text" placeholder="Location" class="form-control input-md" required="">
  <span class="help-block">Enter exact location name</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="defaultuser">Default username</label>  
  <div class="col-md-4">
  <input id="defaultuser" name="defaultuser" type="text" placeholder="usernamce" class="form-control input-md" required="">
  <span class="help-block">This will be the default instance user. More users can be added later.</span>  
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="defaultpassword">Password for Default User</label>
  <div class="col-md-4">
    <input id="defaultpassword" name="defaultpassword" type="password" placeholder="password" class="form-control input-md" required="">
    <span class="help-block">Enter a strong password</span>
  </div>
</div>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="kbase">Upload Knowledge base</label>
  <div class="col-md-4">
    <input id="kbase" name="kbase" class="input-file" type="file">
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-info">Create Agro Instance</button>
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