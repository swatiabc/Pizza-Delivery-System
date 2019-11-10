<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%!
ResultSet rs;
ResultSet rs1;
Statement st;
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
<title>Cart</title>
</head>
<body>

<h2>
<table style="width:50%">
<tr>
<td><a href="home.jsp" style="color:black" >Home </a></td>
<td><a href="menu.jsp" style="color:black">Menu </a></td>
<td><a href="logout.jsp" style="color:black">Logout </a></td>
</tr>
</table>
</h2>

<%
String[] order= request.getParameterValues("pizza");
if(order!=null)
{int n = order.length;}
else {
	order = (String[]) session.getAttribute("myorder"); 
	int n=order.length;
}
String email=(String) session.getAttribute("email");
out.println(email+"<br>"); 
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", "");
    st=conn.createStatement();
	//rs.next();
}catch(Exception e){
	e.printStackTrace();
}
%>

<center>
<h2>
YOUR CART
</h2>

<form action="confirm.jsp" method="get">
<%
for(int i=0;i<order.length;i++) {
	String q="select * from cart where orderid='"+order[i]+"' and email='"+email+"' ";
	rs1 = st.executeQuery(q);
	if(!rs1.next()){
	q = "insert into cart values('"+email+"','"+order[i]+"')";
	int k = st.executeUpdate(q);}
	String m = "select * from menu where id='"+order[i]+"'";
	out.println(order[i]);
	rs = st.executeQuery(m);
	rs.next();
	%>
	<div class="row">
  <div>
    <p class="my-pizza-offers"><%=rs.getString("name") %></p> <span class="icon-box"><img src="<%=rs.getString(4)%>" alt="<%rs.getString("name");%>" title="" class="img-responsive"></span> </div>
  <p class="my-p"> <span style="font-size: small;"><%=rs.getString("detail")%></span> </p>
    <input type="Checkbox" name="pizza" value="<%=rs.getString(1)%>" checked> 
  </div>
	<% 
}
%>
<input type="submit" Value="Proceed to pay">
</form>
</center>

</body>

</html>



