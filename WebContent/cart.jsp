<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*,java.sql.*" %>
    <%@ page import="net.io.mail.Mailer" %>
<%!ResultSet rs;
double cost;
double tax;
double sum;
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

</style>

<title>Cart</title>
</head>
<body background="media/signin.jpg"
background-repeat=no-repeat>
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


<%
String[] order= request.getParameterValues("pizza");
int n;
if(order!=null)
{ n = order.length;}
else {
	order = (String[]) session.getAttribute("myorder"); 
	 n=order.length;
}

String price[] = new String[n];
String name[] = new String[n];
sum=0;
//out.println("<h1><b>khjkllhkl"+(String)order[0]+"</b></h1>");
double j;
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", "");
	Statement st=conn.createStatement();
	String m;
	//rs=st.executeQuery(m);
	

//rs.next();
for(int i=0;i<order.length;i++){
	m = "select id, name, price from menu where id='"+order[i]+"'";
	out.println(order[i]);
	rs = st.executeQuery(m);
	rs.next();
	price[i]=rs.getString("price");
	name[i]=rs.getString("name");
	j=Integer.parseInt(price[i]);
	sum=sum + j;
}

tax=sum*0.18;

}catch(Exception e){
	e.printStackTrace();
}
%>
<h4>
<%
String e=(String) session.getAttribute("email");
out.println(e+"<br>"); %>
</h4>
<h4>Your Bill</h4>

<table id="bills">
<%
for (int i =0; i < n ; i++)
{
%>
<tr>
<td> <%=name[i]%></td>
<td><%=price[i]%> </td>
</tr>

<%       
}
%>
<tr>
<td><hr></td>
<td><hr></td>
</tr>

<tr>
<td>Cost</td>
<td><%=sum %></td>
</tr>

<tr>
<td>Tax</td>
<td><%=tax%></td>
</tr>
<tr>
<td><hr></td>
<td><hr></td>
</tr>
<tr>
<td>Total cost</td>
<td><%=(sum+tax)%></td>
</tr>
</table>

<!-- mail message -->
<%
double costs=sum+tax;
String msg="Your Bill ";
msg=msg+"---";
for(int i=0;i<order.length;i++)
{
	msg=msg+"	"+name[i]+"--"+price[i]+"	";
}
msg=msg+"	Cost--"+sum+"	"
+"	Tax--"+tax+"	"
+"	Total Cost--"+costs+"	";
//out.println(msg);
%>

<%
String email = (String) session.getAttribute("email");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", "");
	Statement st=conn.createStatement();
	String q = "select wallet from signup where email='"+email+"'";
	rs=st.executeQuery(q);
	rs.next();
	String bal=rs.getString("wallet");
	double cost =tax+sum;
	double total = Double.parseDouble(bal) - cost;
	//out.println(total+" "+Double.parseDouble(bal));
	if(total>=0)
	{
		out.println("Your Balance is: "+total);
		String q1="update signup set wallet='"+total+"' where email='"+email+"'";
		st.executeUpdate(q1);
		String to=email;
		String subject="ORDER DETAILS";
		//String msg=Integer.toString(otp);
		Mailer.send(to,subject,msg);
		out.print("<br>Your order details are mailed in your registered email<br>");
		session.setAttribute("cost",total);
	}
	else
		out.println("Not Enough Money");
}
catch(Exception exp)
{
System.out.print(exp);
exp.printStackTrace();
}
%>

</center>
</body>
</html>
