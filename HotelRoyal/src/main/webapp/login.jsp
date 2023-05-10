<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Login</title>
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
  					<li class="active"><a href=index.html>Home</a></li>
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
	<form action ="loginAction.jsp" method="post">
	<h3>Have an Account?</h3>
					<br>
	<fieldset style="width:25%; background-image:url('images/sbg.jpg')">
					  <br>
					<div class="form-holder">
			
						<span class="lnr lnr-user"></span>
								<input type="text" name="email" placeholder="Enter Email" required>
					</div>
					<br>
					
	<div class="form-holder">
						<span class="lnr lnr-user"></span>
								<input type="password" name="password" placeholder="Enter Password" required>
					</div>
					<br>
					<div class="form-holder">
						<span class="lnr lnr-user"></span>
								
<%  
StringBuffer sb=new StringBuffer();  
for(int i=1;i<=5;i++)  
{  
    sb.append((char)(int)(Math.random()*79+23+7));  
}  
String cap=new String(sb);  
%>  

<center>  
<script type ="text/javascript"> 
function validation(){  
    var c = document.forms ["f1"]["cap1"].value;  
    if(c==null||c=="")  
    {  
    alert ("Please Enter Captcha");  
       return false;  
    }  
}  
</script>  
<form action="login.jsp" name="f1" onsubmit="return validation()">  
<table border="0">  
    <tbody>  
       <tr>  
        <td>  
          <div style="background-color: aqua"><h2><s><i><font face="casteller"><%=cap%></font></i></s></h2></div>  
        </td>  
        <td><input type="text" name="cap1" value="" /></td>  
        <td><input type="hidden" name="cap2" value='<%=cap%>' readonly="readonly"/> </td>  
      </tr>  
   </tbody>  
</table>  
<input type="reset" value="Reset" />  
 
    </center>  
    </div> 
					</div>
					<br>
	
	<input type="submit"value="login">
	</form>
			<h2>
				Don't have an account?<a href="signup.jsp">Create new</a>
			</h2>
			<h2>
				<a href="forgotPassword.jsp">Forgot Password?</a>
			</h2>
		</div>
		<div class='whysignLogin'>
		<%
		String msg=request.getParameter("msg");
		if("notexist".equals(msg))
		{
			%>
			<h1>Incorrect Username or Password</h1>
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