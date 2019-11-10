<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%!
ResultSet rs;
%> 

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

body {
  background-image: url("media/menu.jpg");
 background-repeat: no-repeat;
  background-attachment: fixed;
 height: 300%;
}

</style>
<title>Menu</title>
</head>
<body>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", "");
	Statement st=conn.createStatement();
	String q = "select * from menu";
	rs = st.executeQuery(q);
	//rs.next();
}catch(Exception e){
	e.printStackTrace();
}
%>

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

<form action="displayRange.jsp" method="get">
<h4>Search Pizza: 
<input list="price" name="pizzaprice">
  <datalist id="price">
    <option value="100-200">
    <option value="200-300">
    <option value="300-400">
    <option value="400-500">
    <option value="500-600">
  </datalist></h4>
<input type="submit" value = "search">
</form>

<form action="beforecart.jsp" method="get">
<%while(rs.next()){ %>
<div class="row">
  <div>
    <p class="my-pizza-offers"><%=rs.getString("name") %></p> <span class="icon-box"><img src="<%=rs.getString(4)%>" alt="<%rs.getString("name");%>" title="" class="img-responsive"></span> </div>
  <p class="my-p"> <span style="font-size: small;"><%=rs.getString("detail")%></span> </p>
    <input type="Checkbox" name="pizza" value="<%=rs.getString(1)%>"> 
 </div>
<%} %>
<input type="submit" Value="Add to Cart">
</form>
</center>

</body>

</html>



