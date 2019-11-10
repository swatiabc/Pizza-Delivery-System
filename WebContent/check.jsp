<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*,java.sql.*" %>
    <%@ page import="net.io.mail.Mailer" %>
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
<body background="media/signin.jpg"
background-repeat=no-repeat>
<centre>
<h2>
<table style="width:50%">
<tr>
<td><a href="home.jsp" style="color:black" >Home</a></td>
<td><a href="menu.jsp" style="color:black">Menu</a></td>
<td><a href="logout.jsp" style="color:black">Logout</a></td>
</tr>
</table>
</h2>

<%
String email = (String) session.getAttribute("email");
int otp = (Integer) session.getAttribute("otp");
int reotp =Integer.parseInt(request.getParameter("reotp"));
double cost = (Double) session.getAttribute("cost");
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", "");
	Statement st=conn.createStatement();
	String q = "select wallet from signup where email='"+email+"'";
	ResultSet rs=st.executeQuery(q);
	rs.next();
	
	if(otp==reotp){
	String q1="update signup set wallet='"+cost+"' where email='"+email+"'";
	st.executeUpdate(q1);
	String to=email;
	String subject="YOUR ORDER";
	String msg="Your total price: "+cost+" THANK YOU FOR YOR ORDER";
	Mailer.send(to,subject,msg);
	out.println("<br>Thank You For Your Order<br>");
	}
	else{
		response.sendRedirect("cart.jsp");
	}
}catch(Exception e){
	e.printStackTrace();
}

%>

</centre>
</body>
</html>