<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Donation Hub</title>

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
.example1 
{

 height: 50px;	
 overflow: hidden;
 text-shadow: 2px 2px 4px green;
 font-size: 50px;
 color: #45a049;
 padding:1px;
 font: red-serif;
 font-family: Arial, Helvetica, sans-serif,italic;
 
}
</style>
</head>

<body>
<div style= "width: 100%; height: 100px; font-family: Arial, Helvetica, sans-serif,italic;">
<div style="float: left;">
<img src="https://parthmakadia1999.000webhostapp.com/donation/a.jpg"  style=" width: 196px; height: 76px; border: 2px solid black;">
</div>
<%
   
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
   
    %>

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
  <a class="active" href="Gallery">Gallery</a>
  <a>|</a>
  <c:choose>
  <c:when test="${person !=null }">
  <a href="Logout">Logout</a>
  <p style="color: white; padding-right:5px; padding-top:25px; float:right; font-family: Arial, Helvetica, sans-serif;">welcome ${person.getFirstname()} ${person.getLastname()}</p>
  </c:when>
  <c:otherwise>
  <a href="Login">Login</a>
  </c:otherwise>
  </c:choose>
</div>
</div>
<div>
<table>
<tr>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/1.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/2.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/3.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/4.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/5.jpg"  style=" width: 295px; height: 200px; "></td>
</tr>
<tr>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/11.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/22.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/13.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/14.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/15.jpg"  style=" width: 295px; height: 200px; "></td>
</tr>
<tr>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/6.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/7.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/8.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/16.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/9.jpg"  style=" width: 295px; height: 200px; "></td>
</tr>
<tr>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/10.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/12.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/20.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/16.jpg"  style=" width: 295px; height: 200px; "></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/21.jpg"  style=" width: 295px; height: 200px; "></td>
</tr>
<td><a href="https://parthmakadia1999.000webhostapp.com/gallery/17.jpg">
<img src="https://parthmakadia1999.000webhostapp.com/gallery/17.jpg"  style=" width: 295px; height: 200px; "></a></td>
<td><img src="https://parthmakadia1999.000webhostapp.com/gallery/18.jpg"  style=" width: 295px; height: 200px; "></td>
</table>
</div>
</body>
</html>