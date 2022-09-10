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

.topnav a.activ {
 
  color: #4CAF50;
}
.h1
{
color: black;
font-family: Arial, Helvetica, sans-serif;

}



button 
 {
  background-color: #4CAF50;
  color: white;
  padding: 8px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}


button:hover {
  background-color: #45a049;
} 
.work
{


}


</style>



<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
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
<img src="" style=" width: 200px; height: 80px; border: 2px solid black;">
</div>








<div class="topnav">


<br>
  <a class="activ" href="index">Home</a>
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
<div style="background-color: black; width: 100%; height: 400px; font-family: Arial, Helvetica, sans-serif,italic;">


<div style="float: left; width: 30%; height: 400px; padding: 50px;">

<h1 style="color: white;">Welcome to our Charity</h1>
<hr style="border: solid 2px green ; width: auto;">


<p align="justify" style="color: white;">
You have not lived today until you have done something for someone who can never repay you
</p>
<p align="right" style="color: white;">-John Bunyan</p>

</form>
</div>

<div style="width:50%;  height: 400px; float:right;">

<img src="" style="width: 500px; padding: 30px; height: 370px">
</div>

</div>

<br>


<div class="slideshow-container" style="width: 100%; height: 400px; ">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="" style="width:100% ;height: 400px">

</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="" style="width:100%; height: 400px">

</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="" style="width:100%; height: 400px">
</div>

<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>




</div>


<br>








<br>
<div style="background-color: #f2f2f2; width: 100%; height: 400px; font-family: Arial, Helvetica, sans-serif,italic;">
 <img src="" style="width:100%; height: 400px">
</div>
<div style="background-color: black; width: 100%; height: 400px; font-family: Arial, Helvetica, sans-serif,italic;">
<div >

</div>

<div style="width: 30%; height: 400px; padding: 50px">
<h1 style="color: white;">About Us</h1>
<br>
<p align="justify" style="color: white;">Do you want to be even more successful? Learn to love learning and growth.
 The more effort you put into improving your skills, the bigger the payoff you will get.
  Realize that things will be hard at first, but the rewards will be worth it.</p>

</div>


</div>
</body>
</html>