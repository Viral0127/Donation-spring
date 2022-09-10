<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.Bo.Bo"%>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.model.Person" %>
<%@page import="java.util.List"%>
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
	width: 370px;
   
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	border: 1px solid inset;
	border-radius: 8px;
	color: black;
	background-color: #f2f2f2;
	border-color: #4CAF50;
	
}

table,td, th {
border: 1px solid black;
 border-collapse: collapse;
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
  <a href="Adminrequest">Requests</a>
  <a class="active" href="Adminregistered">Registered People</a>
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
<center style="padding: 30px;">
<div class="login-box">
<table>
<tr>
<th>Id</th>
<th>First name</th>
<th>Last name</th>
<th>Mobile no</th>

</tr>
<%
ApplicationContext a = new ClassPathXmlApplicationContext("Beans.xml");
Bo pbo = (Bo) a.getBean("bo");
List<Person> Plist = pbo.registeredpeople();
%>

<% for(Person p:Plist)
   {
	if(p.getMobile().equals("admin"))
		continue;
%>

<tr>
<td><%=p.getId()%></td>
<td><%=p.getFirstname()%></td>
<td><%=p.getLastname()%></td>
<td><%=p.getMobile()%></td>

</tr>
<%} %>
</table>

</div>
</center>

</body>
</html>