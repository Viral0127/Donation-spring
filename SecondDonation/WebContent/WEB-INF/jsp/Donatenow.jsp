<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
    <%@ page import="javax.servlet.http.HttpServletRequest" %>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The Donation Platform</title>
<script>
function checkDate() {
   var selectedText = document.getElementById('datepicker').value;
   var selectedDate = new Date(selectedText);
   var date = new Date();
  
   if (selectedDate <= date) {
    alert("Date must be in the future");
   }
 }
function checkpincode()
{  var v=document.getElementById('pincode').value;
	var r=/^[0-9]{6}?$/;

	if(!r.test(v))
	{
		alert("pincode should be 6 digits");	
	}
}

</script>
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
	width: 500px;
   
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	border: 1px solid inset;
	border-radius: 8px;
	color: black;
	background-color: #f2f2f2;
	border-color: #4CAF50;
	
}
.login-boxs {
	width: 360px;
   
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
<%
   
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
   
    %>

<div class="topnav">
<br>
  <a href="index">Home</a>
  <a class="active" href="Donatenow">Donate now</a>
  <a  href="Contactus">Contact us</a>
  <a href="Yourrequest">Your request</a>
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


<div style="padding: 2px; float: left; margin-left: 260px; padding-top: 20px;">
<div class="login-box">
<center><p style="font-size: 20px; padding: 10px; font-family: Arial, Helvetica, sans-serif,italic;">what you want to donate</p></center>


<form name="Proceed" action="Proceed" method="post">

<table>
<input type="hidden" name="Mobile" value="${person.getMobile()}">
  <tr>
    <th colspan="2" style="padding-left: 35px;"><center>Item</center></th>
    <th><center>Quantity</center></th>
  	<th><center>Description</center></th>
  </tr>
  
  
  <tr>
    <td><img src="https://parthmakadia1999.000webhostapp.com/Donatenow/6.jpg" style=" width: 80px; height: 50px; "></td>
    <td>Clothes</td>
    <td><center><input type="number" name="Clothesquantity" required="required"   placeholder="Ex.123.." style="width: 60px; height: 20px;" ></center></td>
  	<td><center><textarea id="description" name="Clothesdescription"  placeholder="Ex. about quality,size.." style="height:50px"></textarea></center></td>
  </tr>
   
  <tr>
    <td><img src="https://parthmakadia1999.000webhostapp.com/Donatenow/7.jpg" style=" width: 80px; height: 50px; "></td>
    <td>Shoes</td>
    <td><center><input type="number" name="Shoesquantity" required="required"   placeholder="Ex.123.." style="width: 60px; height: 20px;" ></center></td>
    <td><center><textarea id="Shoesdescription" name="Shoesdescription"  placeholder="Ex. about quality,size.." style="height:50px"></textarea></center></td>
  </tr>
  <tr>
    <td><img src="https://parthmakadia1999.000webhostapp.com/Donatenow/8.jpg" style=" width: 80px; height: 50px; "></td>
    <td>Stationery</td>
    <td><center><input type="number" name="Stationeryquantity" required="required"   placeholder="Ex.123.."  style="width: 60px; height: 20px;" ></center></td>
    <td><center><textarea id="Stationerydescription" name="Stationerydescription"  placeholder="Ex. about quality.." style="height:50px"></textarea></center></td>
  </tr>
  <tr>
    <td><img src="https://parthmakadia1999.000webhostapp.com/Donatenow/9.jpg" style=" width: 80px; height: 50px; "></td>
    <td>Glossary</td>
    <td><center><input type="number" name="Glossaryquantity" required="required"   placeholder="Ex.123.."  style="width: 60px; height: 20px;" ></center></td>
    <td><center><textarea id="Glossarydescription" name="Glossarydescription"  placeholder="Ex. about quality,other.." style="height:50px  "></textarea></center></td>
  </tr>
  
  <tr><td colspan="4" style="padding-left: 175px; padding-top: 20px;">* write 0 in Quantity if not donate that item</td></tr>
  
  </table>
 
 
</div>
</div>




<div style="padding: 0px; float: right; margin-right: 310PX;">
<div class="login-boxs">
<center><p style="font-size: 20px; padding: 10px; font-family: Arial, Helvetica, sans-serif,italic;">Schedule your pickup</p></center>



<center>


<table>
<tr>
<td><lable>Book your day:</lable></td>
<td><input type="date" name="Date" required="required" id="datepicker" onchange="checkDate()" required class="datepicker-input"></td>
</tr>
<tr>
<td style=" padding-right: 0px;"><label>Select your time:</label></td>
<td><select name="Time" required="required">
  <option value="9:00 AM to 12:00 PM">9:00 AM to 12:00 PM</option>
  <option value="12:00 PM to 3:00 PM">12:00 PM to 3:00 PM</option>
  <option value="3:00 PM to 6:00 PM">3:00 PM to 6:00 PM</option>
  <option value="6:00 PM to 9:00 PM">6:00 PM to 9:00 PM</option>
</select></td>
</tr>
<tr>
<td style=" padding-right: 50px;"  ><lable>Pin code:</lable></td>
<td><input type="number" name="Pincode"  onchange="checkpincode()" id="pincode" required="required">
<tr><td colspan="2" style="padding-right: 115px; padding-bottom: 2px;"><label>House No.,Building name:*</label></td></tr>
<tr><td colspan="2" style="padding-top: 0px;"><input type="text" name="Address1" required="required" placeholder=" House No.,Building name.." style=" width: 290px;" ></tr>

<tr><td colspan="2" style="padding-right: 115px; padding-bottom: 2px;"><label>Road name, Area, Colony:*</label></td></tr>
<tr><td colspan="2" style="padding-top: 0px; "><input type="text" name="Address2" required="required"  placeholder=" Road name, Area, Colony.." style=" width: 290px;" ></tr>

<tr>
<td colspan="2" style="padding-right: 80px; padding-bottom: 2px;"><label id="subject">Any suggestion for pick up man:</label></td>
<td>
</tr>
<tr>
<td colspan="2" style="padding-top: 0px;">
<textarea id="subject" name="Subject" placeholder=" Write something.." style="height:77px; width: 290px; box-sizing: border-box; resize: vertical;" ></textarea>
</td>
</tr>

   <tr><td colspan="2"><input type="submit" name="Proceed" value="Proceed" ></td></tr>
</table>
</center>
 </form>
</div>
</div>


</body>
</html>