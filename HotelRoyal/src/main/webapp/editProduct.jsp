<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="footer.jsp"%> 
<html>
<head>
<link rel="stylesheet" href="addNewProduct-style.css">
<title>Add New Product</title>
<style>
.back {
	color: white;
	margin-left: 2.5%
}
</style>
</head>
<body>
	<h2>
		<a class="back" href="allProductEditProduct.jsp"><i
			class='fas fa-arrow-circle-left'> Back</i></a>
	</h2>
<%
String no = request.getParameter("no");
try
		{
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select *from room where no='"+no+"'");
			while(rs.next())
			{
			
		%>
<form action="editProductAction1.jsp" method="post">
<input type="hidden" name="id" value=<%out.println(no); %>>
	<div class="left-div">
		<h3>Enter Name</h3>
	<input class="input-style" type="text" name="name" value="<%=rs.getString(2) %>"required>
		<hr>
	</div>

	<div class="right-div">
		<h3>Enter Category</h3>
<input class="input-style" type="text" name="category" value="<%=rs.getString(3) %>"required>
		
		<hr>
	</div>

	<div class="left-div">
		<h3>Enter Price</h3>
<input class="input-style" type="number" name="price" value="<%=rs.getString(4) %>"required>
		
		<hr>
	</div>

	<div class="right-div">
		<h3>Active</h3>
<select class="input-style" name="active">
<option value="Yes">Available</option>
<option value="No">Not Available</option>
</select>
		<hr>
	</div>
	<button class-"button">Save
	<i class='far fa-arrow-alt-circle-right'></i>
	</button>
</form>
<%
}
}
catch(Exception e)
{
System.out.println(e);	
}
%>
</body>
<br>
<br>
<br>
</body>
</html>