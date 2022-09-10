<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.Bo.Bo"%>
<%@page import="java.util.List"%>
<%@page import="com.model.Donatenow" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
table,td, th {
border: 1px solid black;
 border-collapse: collapse;
  text-align: center;
  padding: 12px;
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
.login-box {
	width: 100%;
   
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	border: 1px solid inset;
	border-radius: 8px;
	color: black;
	background-color: #f2f2f2;
	border-color: #4CAF50;
	
}

td, th {
 
  text-align: center;
  padding: 12px;
}
</style>
</head>

<body>
<div style= "width: 100%; height: 100px; font-family: Arial, Helvetica, sans-serif,italic;">
<div style="float: left;">
<img src="https://parthmakadia1999.000webhostapp.com/donation/a.jpg"  style=" width: 196px; height: 76px; border: 2px solid black;">
</div>


<div class="topnav">
<br>
  <a  href="Adminhome">Home</a>
  <a  href="Admincontactus">Contacted People</a>
  <a class="active" href="Adminrequest">Requests</a>
  <a href="Adminregistered">Registered People</a>
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
ApplicationContext a = new ClassPathXmlApplicationContext("Beans.xml");
Bo dbo=(Bo)a.getBean("bo");
List<Donatenow> dlist=dbo.requests();
%>

<div style="padding top: 30px;">
<div class="login-box">
<table>
<tr>
<td rowspan="2">Id</td>
<td rowspan="2">User</td>
<td colspan="2">Clothes</td>

<td colspan="2">Shoes</td>

<td colspan="2">Stationery</td>

<td colspan="2">Glossary</td>

<td rowspan="2">Date</td>
<td rowspan="2">Time</td>
<td rowspan="2">Pincode</td>
<td rowspan="2">Address1</td>
<td rowspan="2">Address2</td>
<td rowspan="2">Suggestion</td>
</tr>
<tr>
<td>quantity</td>
<td>description</td>
<td>quantity</td>
<td>description</td>
<td>quantity</td>
<td>description</td>
<td>quantity</td>
<td>description</td>
</tr>
<% for(Donatenow dn:dlist)
   {
%>
<tr>
<td><%=dn.getId()%></td>
<td><%=dn.getMobile()%></td>
<td><%=dn.getClothesquantity() %></td>
<td><%=dn.getClothesdescription() %></td>
<td><%=dn.getShoesquantity() %></td>
<td><%=dn.getShoesdescription() %></td>
<td><%=dn.getStationeryquantity() %></td>
<td><%=dn.getStationerydescription() %></td>
<td><%=dn.getGlossaryquantity() %></td>
<td><%=dn.getGlossarydescription() %></td>
<td><%=dn.getDate() %></td>
<td><%=dn.getTime() %></td>
<td><%=dn.getPincode() %></td>
<td><%=dn.getAddress1() %></td>
<td><%=dn.getAddress2() %></td>
<td style="width: 100px;"><%=dn.getSubject() %></td>
</tr>


<%} %>
</table>

</div>
</div>
</body>
</html>