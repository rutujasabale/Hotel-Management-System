<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  
"http://www.w3.org/TR/html4/loose.dtd">   
<html>  
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <title>JSP Page</title>  
</head>  
<body>  
<%  
StringBuffer sb=new StringBuffer();  
for(int i=1;i<=5;i++)  
{  
    sb.append((char)(int)(Math.random()*79+23+7));  
}  
String cap=new String(sb);  
%>  
<div style="background-color: skyblue">  
<center>  
<h1>Captcha Demo</h1>  
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
<form action="log" name="f1" onsubmit="return validation()">  
<table border="0">  
    <tbody>  
       <tr>  
        <td>  
          <div style="background-color: aqua"><h2><s><i><font face="casteller"><%=cap%></font></i></s></h2></div>  
        </td>  
        <td><input type="text" name="cap1" value="" /></td>  
        <td><input type="hidden" name="cap2" value='<%=cap%>' readonly="readonly" </td>  
      </tr>  
   </tbody>  
</table>  
<input type="submit" value="OK" />  
<input type="reset" value="Reset" />  
</form>  
    </center>  
    </div>  
</body>  
</html> 