<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The Donation Platform</title>




<style>
body {
  margin: 0;
  
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
padding-left:500px;
  overflow: hidden;
  height:80px;
  background-color: black;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 10px 12px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover 
{

  color: #4CAF50;
}

.topnav a.active {
 
  color: #4CAF50;
}
.h1
{
color: black;
font-family: Arial, Helvetica, sans-serif;

}



.button 
{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px;
  
  float:right;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  font-family: Arial, Helvetica, sans-serif;
  
}
input[type=text],input[type=password]  {
  width: 200px;
  padding: 4px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;

}

.button3 
{
border-radius: 10px;
padding-left: 10px;

}
.login-box {
	width: 350px;
	
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	border: 1px solid inset;
	border-radius: 8px;
	color: black;
	background-color: #f2f2f2;
	border-color: black;
	
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 8px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}


</style>
</head>
<body>
<body>

<%
   
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
   
    %>



<div style= "width: 100%; height: 100px; font-family: Arial, Helvetica, sans-serif,italic; ">
<div style="float: left;">
<img src="https://parthmakadia1999.000webhostapp.com/donation/a.jpg" style=" width: 196px; height: 76px; border: 2px solid black;">
</div>



<div class="topnav">
<br>
   <a href="index">Home</a>
			<c:choose>
				<c:when test="${person !=null }">
					<a href="Donatenow">Donate now</a>
				</c:when>
				<c:otherwise>
					<a href="Login">Donate now</a>
				</c:otherwise>
			</c:choose>

<a  href="Contactus">Contact us</a>
  <c:choose>
  <c:when test="${person !=null }">
  <a href="Yourrequest">Your request</a>
  </c:when>
  <c:otherwise>
  <a href="Login">Your request</a>
  </c:otherwise>
  </c:choose>
  
  <a href="Gallery">Gallery</a>
  <a>|</a>
  <a class="active" href="Login">Login</a>
</div>
</div>

<div style=" width: 100%; height: 550px;">
<center style="padding: 30px;">

<div class="login-box">

<h1 style="background-color: #4CAF50; width: 350px; height: 50px; color: white; border-top-left-radius: 8px;border-top-right-radius: 8px; ">sign in</h1>

		<form action="Signin" method="post">
		<c:if test="${error != '' }"><p style="color:red;">${error}</p></c:if><br/>
		<label>username:</label>
		<input type="text" name="Username" placeholder=" Mobile no..">
		<br>
		
		<label>password:</label>
		<input type="password" name="Password" placeholder=" Password..">
		
		
		<br>
		<input type="submit" name="Signin" value="Sign in">
		<br>
		<br>
		<center>Dont have an account?</center>
		<center><a href="Signupnow" style="background-color: transparent; color: #45a049; text-decoration: none;">sign up now</a></center>
		<br>
		
		</form>
</div>

</center>
</div>

</body>
</html>

