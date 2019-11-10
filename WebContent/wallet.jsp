<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h4>Enter Your Address</h4>
<form>
<input type="text" name="address">
</form>

<%
String email = (String) session.getAttribute("email");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", "");
Statement st=conn.createStatement();
String q = "select wallet from signup where email='"+email+"'";
ResultSet rs=st.executeQuery(q);
rs.next();
String bal=rs.getString("wallet");
String cost=(String)session.getAttribute("price");
double total = Double.parseDouble(bal) - Double.parseDouble(cost);
if(total>=0){
%><br><br>
<h4>Your Balance is: <% out.println(total);%></h4><%
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</center>
</body>
</html>