
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users(name varchar(100),email varchar(100)primary key,mobileNumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100))";
	String q2 = "create table room(no int primary AUTO_INCREMEN,name varchar(100),category varchar(200),price int,status varchar(20))";
	String q3 = "create table book(email varchar(100), room_no int, size int, price int, address varchar(500), mobileNumber bigint,orderDate varchar(100), deliveryDate varchar(100), paymentMethod varchar(100), transactionId varchar(100), status varchar(100))";
	
	System.out.print(q1);
	System.out.print(q2);
	System.out.print(q3);
	//st.execute(q1);
	//st.execute(q2);
	st.execute(q3);
	System.out.print("Table created");
	con.close();
}
catch(Exception e)
{
	System.out.print(e);
}
%>