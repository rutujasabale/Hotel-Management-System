<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Forgot Password</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- LINEARICONS -->
		<link rel="stylesheet" href="css/style1.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
		<style>
body {margin: 0;}

ul.topnav {
  list-style-type: none;
  margin: 10;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

ul.topnav li {float: left;}

ul.topnav li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

ul.topnav li a:hover:not(.active) {background-color: #111;}

ul.topnav li a.active {background-color: #04AA6D;}

ul.topnav li.right {float: right;}

@media screen and (max-width: 600px) {
  ul.topnav li.right, 
  ul.topnav li {float: none;}
}
.active {
  background-color: #04AA6D;
}
</style>
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
	<div id='container'>
		<div class='signup'>
<form action="forgotPasswordAction.jsp" method="post">
<h3>Forgot Password?</h3>
					<br>
	<fieldset style="width:25%; background-image:url('images/sbg.jpg')">
					  <br>
					
					
	<div class="form-holder">
						<span class="lnr lnr-user"></span>
								<input type="text" name="email"placeholder="Enter Email" required> 
					</div>
					<br>

	<div class="form-holder">
						<span class="lnr lnr-user"></span>
								<select name=securityQuestion">
					<option value="What is your pet name?">What is your pet name?</option>
					<option value="What is your first car name?">What is your first car name?</option>
					<option value="What is your favorite school teacher name?">What is your favorite school teacher name?</option>
					</select>
					</div>
					<br>
					<br>
						<div class="form-holder">
						<span class="lnr lnr-user"></span>
								<input type="text" name="answer" placeholder="Enter Answer" required>
					</div>
					<br>
						<div class="form-holder">
						<span class="lnr lnr-user"></span>
								<input type="password" name="newPassword" placeholder="Enter ypur new Password to set" required>

					</div>
					<br>
						<div class="form-holder">
						<span class="lnr lnr-user"></span>
								<input type="submit" value="save">
					</div>
					<br>

					

</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whyforgotPassword'>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
	%>
	<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
	%>
	<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

			
		</div>
	</div>
</body>
</html>