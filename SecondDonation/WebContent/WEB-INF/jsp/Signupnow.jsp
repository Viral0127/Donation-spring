<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
label
{
float: left;
padding: 10px;

padding-left: 45px;
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


.button3 
{
border-radius: 10px;
padding-left: 10px;

}
.login-box {
	width: 400px;
   
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	border: 1px solid inset;
	border-radius: 8px;
	color: black;
	background-color: #f2f2f2;
	border-color: #4CAF50;
	
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





<div style= "width: 100%; height: 100px; font-family: Arial, Helvetica, sans-serif,italic;">
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
  <a href="Contactus">Contact us</a>
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
  <a href="Login">Login</a>
</div>
</div>
<div style=" width: 100%; height: 550px;">
<center style="padding: 30px;">
<div class="login-box">
<div >
<h1 style="background-color: #4CAF50; width: 400px; height: 50px; color: white; border-top-left-radius: 8px;border-top-right-radius: 8px;">sign up</h1>
</div>

<c:if test="${error1 != '' }"><p style="color:red;">${error1 }</p></c:if>
<c:if test="${error2 != '' }"><p style="color:red;">${error2 }</p></c:if>
<c:if test="${error3 != '' }"><p style="color:red;">${error3 }</p></c:if>
<c:if test="${error4 != '' }"><p style="color:red;">${error4 }</p></c:if>

<form name="Signup" action="Signup" method="post">
<label>Firstname:</label>

<input type="text" name="Firstname" required="required" placeholder=" Firstname..">
<br>
<label>Lastname:</label>
<input type="text" name="Lastname" required="required" placeholder=" Lastname..">
<br>
<label>Mobile no:</label>
<input type="text" name="Mobile"  placeholder=" Mobile..">
<br>

<label>Password:</label>
<input type="password" name="Password" required="required" placeholder=" Password..">
<br>
<label style="padding-right:19px;">Re-Password:</label>
<input style="float: left;" type="password" required="required" name="Repassword" placeholder=" Re-password..">
<br>
<center><input type="submit" name="action" value="sign up" ></center>
<br>
</form>
</div>
</center>
</div>

</body>
</html>