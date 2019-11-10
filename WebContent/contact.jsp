<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
  box-sizing: border-box;
}

.row::after {
  content: "";
  clear: both;
  display: table;
}

[class*="col-"] {
  float: left;
  padding: 15px;
}

html {
  font-family: "Lucida Sans", sans-serif;
}

.header {
  background-color: orange;
  color: #ffffff;
  padding: 15px;
}

.menu ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

.menu li {
  padding: 8px;
  margin-bottom: 7px;
  background-color: red;
  color: #ffffff;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}

.menu li:hover {
  background-color: pink;
}

.aside {
  background-color: orange;
  padding: 15px;
  color: red;
  text-align: center;
  font-size: 14px;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}

.footer {
  background-color: orange;
  color: red;
  text-align: center;
  font-size: 12px;
  padding: 15px;
}

/* For mobile phones: */
[class*="col-"] {
  width: 100%;
}

@media only screen and (min-width: 600px) {
  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}
@media only screen and (min-width: 768px) {
  /* For desktop: */
  .col-1 {width: 8.33%;}
  .col-2 {width: 16.66%;}
  .col-3 {width: 25%;}
  .col-4 {width: 33.33%;}
  .col-5 {width: 41.66%;}
  .col-6 {width: 50%;}
  .col-7 {width: 58.33%;}
  .col-8 {width: 66.66%;}
  .col-9 {width: 75%;}
  .col-10 {width: 83.33%;}
  .col-11 {width: 91.66%;}
  .col-12 {width: 100%;}
}

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

</style>
</head>
<body>
<center>
<h2>
<table style="width:50%">
<tr>
<td><a href="home.jsp" style="color:black" >Home</a></td>
<td><a href="menu.jsp" style="color:black">Menu</a></td>
<td><a href="login.html" style="color:black">Login</a></td>
<td><a href="cart.jsp" style="color:black">Cart</a></td>
<td><a href="https://www.google.co.in/" style="color:black">Discounts</a></td>
<td><a href="contact.jsp"style="color:black">Contact us</a></td>
</tr>
</table>
</h2>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="header">
  <h1>Contact Us</h1>
</div>

<div class="row">
  <div class="col-3 col-s-3 menu">
    <ul>
      <li>Order Now</li>
      <li>Register</li>
      <li>Feedback</li>
      <li>Contact Us </li>
    </ul>
  </div>

  <div class="col-6 col-s-9">
    <h1>Pizza Universe</h1>
    <pre>Ppizza customer care 
 151511515

Ppizza's Contact Address
Ppizza's Pizza India,
Tower-D, Plot No. 5,
5th Floor, Logix Techno Park,
Ground Floor, Timmy Arcade,
Sector 127, Noida - 201304, U.P.
</pre>
  </div>

  <div class="col-3 col-s-12">
    <div class="aside">
      <h2>What Are You Waiting For?</h2>
      <p>Order NOW And get The Best Offers.</p>
      <h2>Where do we serve?</h2>
      <p>Mumbai,Delhi,Goa,Pune</p>
      <h2>How do I register?</h2>
      <p>Email ID and Phone Nuumber</p>
    </div>
  </div>
</div>

        <a href="#" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-envelope"></span> Email
        </a>
<div class="footer">
  <p>Happy Eating :).</p>
</div>

</body>
</html>
