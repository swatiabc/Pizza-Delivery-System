<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style>
div.relative {
  position: relative;
  left: 400px;
  top:100px;
}

.button {
  border-radius: 12px;
  background-color: white;
  border: 2px solid black;
  color: black;
  padding: 15px 25px;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
}

table, th, td {
  border-collapse: collapse;
}

</style>

<title>Insert title here</title>
</head>
<body background="media/pizzi.jpg"
background-repeat=no-repeat>

<%--

String email = request.getParameter("email");
String password = request.getParameter("password");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", "");
Statement st=conn.createStatement();
String q = "select * from signup where email='"+email+"' and password='"+password+"'";
ResultSet rs=st.executeQuery(q);
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("email").equals(email))
{
session.setAttribute("email",email);
session.setAttribute("password",password);
String phone=rs.getString("phone");
session.setAttribute("phone",phone);
}
else{
    out.println("Invalid password or username.");
    }
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

 --%>

<center>
<h2>
<table style="width:50%">
<tr>
<td><a href="home.jsp" style="color:black" >Home</a></td>
<td><a href="menu.jsp" style="color:black">Menu</a></td>
<td><a href="logout.jsp" style="color:black">Logout</a></td>
</tr>
</table>
</h2>


<div class="relative">
<font size="10" color="red">
<em><b></b></em>
</font>
<br><br>
<a href="https://www.google.co.in/"><img src="feedback.jpg" width="100" height="100" title="give us your feedback"></a>
</div>
<br>
<br>
<div class="relative">
<font size="3" color="black">
<p align="left">
<br><br>
<br>
<br></p>
<video align="right" width="200" controls>
  <source src="pizza.mp4" type="video/mp4">
  <source src="pizza.ogg" type="video/ogg">
  Your browser does not support HTML5 video.
</video>
<br>


</p>
</font>
</div>
</center>

</body>

</html>