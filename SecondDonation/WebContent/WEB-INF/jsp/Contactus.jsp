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
input[type=text],select,textarea  {
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
padding-right:0px;
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
  float:right;
  
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
  <p style="color: white; padding-right:5px; padding-top:25px; float:right; font-family: Arial, Helvetica, sans-serif;">welcome ${person.getFirstname()} ${person.getLastname()}</p>
  </c:when>
  <c:otherwise>
  <a href="Login">Donate now</a>
  </c:otherwise>
  </c:choose>
  
  <a class="active" href="Contactus">Contact us</a>
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
 <c:choose>
  <c:when test="${person !=null }">
  <a href="Logout">Logout</a>
  </c:when>
  <c:otherwise>
  <a href="Login">Login</a>
  </c:otherwise>
  </c:choose>
 
</div>
</div>
<%
   
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
   
    %>
<center style="padding: 30px;">
<div class="login-box">
<p style="font-size: 20px; padding: 10px; font-family: Arial, Helvetica, sans-serif,italic;">We want to hear from you</p>

<form action="Submit" method="post">
    <label>First Name:</label>
    <input type="text" id="fname" name="Firstname" placeholder="Your name..">

    <label>Last Name:</label>
    <input type="text" id="lname" name="Lastname" placeholder="Your last name..">

<label style="padding-right:8px;">Mobile no:</label>
<input type="text" id="Mobile" name="Mobile" placeholder="your mobile no..">
    
    <label style="padding-right:23px;">Subject:</label>
    <textarea id="subject" name="Subject" placeholder="Write something.." style="height:100px"></textarea>

    <p style="padding-right: 38px;"><input type="submit" value="Submit" name="Submit"></p>
    <br>
    <br>
   <br>
  </form>
</div>
</center>


</body>
</html>