<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String no=request.getParameter("no");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
try
{
	
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update room set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"' where no='"+no+"'");
	
	if(active.equals("No"))
	{
		st.executeUpdate("delete from book where room_id='"+no+"'"); 
	}
	
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>