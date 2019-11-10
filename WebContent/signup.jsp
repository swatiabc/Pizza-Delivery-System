<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style> 
.button {
  background-color: blue;
  border: none;
  color: white;
  padding: 15px 25px;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
}

div.relative {
  position: relative ;
  top:100px;
}

</style>
<script type="text/javascript">
function ValidateEmail(Email) 
{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.Email.value))
  {
    return (true)
  }
    alert("You have entered an invalid email address!")
    return (false)
}
</script>

<title>Insert title here</title>
</head>
<body background="media/signin.jpg">
<center>

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
<h1>Sign Up</h1>
<h5>For your saved addresses and reorder fast!</h5>
<button class="button"><b>f</b> Sign in with Facebook</button>
<h5>or</h5>
<h4>
<form name="myForm" action="login.jsp" method="get"  onsubmit="return ValidateEmail(email)" >
  Email Address:<br>
  <input type="text" name="email">
<br><br>
  Password:<br>
  <input type="password" name="password">
  <br><br>
  Repeat Password:<br>
  <input type="password" name="repassword">
  <br><br>
  <input type="submit" value="Login">
</form>
</h4> 
</div>
</center>
</body>
</html>