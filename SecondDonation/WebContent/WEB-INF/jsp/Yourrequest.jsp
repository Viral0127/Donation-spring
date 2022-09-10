<%@page import="com.Bo.Bo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.model.Donatenow"%>
<%@page import="com.Bo.*"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The Donation Platform</title>

<style>
body {
  margin: 0;
  background-image: url('https://parthmakadia1999.000webhostapp.com/donation/abstract.jpg');
 font-family: Arial, Helvetica, sans-serif,italic;
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
.login-box td, th {
border: 1px solid black; 
 border-collapse: collapse;
  text-align: center;
  padding: 12px;
}
.details
{
width:100%;
border: 1px solid black; 
 border-collapse: collapse;
  text-align: center;
  padding: 12px;
  font-size:17px;
  font-family: Arial, Helvetica, sans-serif,italic;
}
.login-box {
	width: 100%;
   /* overflow:scroll; */
   overflow-x: scroll;
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
  float: right;
}
input[type=submit]:hover {
  background-color: #45a049;
}
.pp input[type=submit]
{
 background-color: #f2f2f2;
 cursor: pointer;
 color: black;
 border: none;
 font-family: Arial, Helvetica, sans-serif,italic;
 padding:none;
 font-size:17px;
 float:none;
 padding: 0px 0px;
} 
.pp input[type=submit]:hover
{
background-color: #f2f2f2;
color: #4CAF50;
border:none;
}
</style>


</head>

<body>
<div style= "width: 100%; height: 100px; font-family: Arial, Helvetica, sans-serif,italic;">
<div style="float: left;">
<img src="https://parthmakadia1999.000webhostapp.com/donation/a.jpg" style=" width: 196px; height: 76px; border: 2px solid black;">
</div>


<div class="topnav">
<br>
  <a href="index">Home</a>
  <a  href="Donatenow">Donate now</a>
  <a  href="Contactus">Contact us</a>
  <a class="active" href="Yourrequest">Your request</a>
  <a href="Gallery">Gallery</a>
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


<%
   
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
   
    %>
    <c:set var="tops" value=" ${person.getMobile()}"/>

<%
String resp =(String)pageContext.getAttribute("tops");  //No exception.

ApplicationContext a = new ClassPathXmlApplicationContext("Beans.xml");
Bo dnbo = (Bo) a.getBean("bo");
List<Donatenow> dnlist=dnbo.getdonationdetails(resp);
%>

<center style="padding: 2px;">
<div class="login-box">
<table class="details">
<tr>
<th rowspan="2">No</th>
<th colspan="2">Clothes</th>
<th colspan="2">Shoes</th>
<th colspan="2">Stationery</th>
<th colspan="2">Glossary</th>
<th rowspan="2">Date</th>
<th rowspan="2">Time</th>
<th rowspan="2">Pincode</th>
<th rowspan="2">Address1</th>
<th rowspan="2">Address2</th>
<th rowspan="2">Suggestion</th>
</tr>
<tr>
<th>quantity</th>
<th>description</th>
<th>quantity</th>
<th>description</th>
<th>quantity</th>
<th>description</th>
<th>quantity</th>
<th>description</th>

</tr>

<c:choose>
<c:when test="${list.size()> 0 }">
<c:forEach items="${list }" var="dn" varStatus="loop">

<tr>
<td>${loop.index + 1}</td>
<td>${dn.getClothesdescription()}</td>
<td>${dn.getShoesquantity()}</td>
<td>${dn.getShoesdescription()}</td>
<td>${dn.getStationeryquantity()}</td>
<td>${dn.getStationerydescription()}</td>
<td>${dn.getGlossaryquantity()}</td>
<td>${dn.getGlossarydescription()}</td>
<td>${dn.getDate()}</td>
<td>${dn.getTime()}</td>
<td>${dn.getPincode()}</td>
<td>${dn.getAddress1()}</td>
<td>${dn.getAddress2()}</td>
<td>${dn.getSubject()}</td>


</tr>
</c:forEach>
</c:when>

</c:choose>
</table>

 </div>
</center>
<%-- <%} %> --%>
<br>
</body>
</html>