<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Create Account</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- LINEARICONS -->
		<link rel="stylesheet" href="style.css">
	
		
	</head>

	<body style="background-image:url('images/bgi.png'); ">


<div><img style="height:150px; width:250px; margin:10px;"src="images/logo (1).png" alt="" class="image-1">
	</div>
	
<ul class="topnav">
  					<li class="active"><a href="index.html">Home</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="gallery.html">Gallery</a></li>
					<li><a href="contact.html">Contact</a></li>
					<div class="clear"> </div>
</ul>

	<center>
		<div style="margin-top:30px;" class="wrapper">
			<div class="inner">
				
				<form action="signupAction.jsp" method="post">
					<h3>New Account?</h3>
					<br>
					<fieldset style="width:25%; background-image:url('images/sbg.jpg')">
					  <br>
					<div class="form-holder">
						<span class="lnr lnr-user"></span>
						<input type="text" name="name" placeholder="Enter Name"   required>
					</div>
					<br>
					<div class="form-holder">
						<span class="lnr lnr-envelope"></span>
						<input type="text" name="email" placeholder="Enter Email" required>
					</div>
					<br>
					<div class="form-holder">
						<span class="lnr lnr-phone-handset"></span>
						<input type="number" name="mobilenumber"placeholder="Enter Mobile Number" required> 
					</div>
					<br>
					<select name=securityQuestion">
					<option value="What is your pet name?">What is your pet name?</option>
					<option value="What is your first car name?">What is your first car name?</option>
					<option value="What is your favorite school teacher name?">What is your favorite school teacher name?</option>
					</select>
					<br>
					<div class="form-holder">
					<span class="lnr lnr-phone-handset"></span>
					<input type="text" name="answer" placeholder="Enter Answer" required>
					</div>
					<br>
					<div class="form-holder">
						<span class="lnr lnr-lock"></span>
						<input type="password" name="password" placeholder="Enter Password" required>
					</div>
					<br><br>
					<input type="submit"
					value="signup">
			</form>
			<br>
			
				Already have an account? <a href="login.jsp">Login</a>
				<br><br>
		</div>
	
		
		<div class='whysign'>
		<%
		String msg=request.getParameter("msg");
		if("valid".equals(msg))
		{
			%>
			<h1>Successfully Registered..!</h1>	
		<%} %>
		
		<%
		if("invalid".equals(msg))
		{
		%>
			<h1>Some thing Went Wrong! Try Again !</h1>
		<%} %>
					
					
			</div>
			
		</div>
		
		</div>
	</div>
	
	</fieldset></center>
	</div>

</body>
</html>