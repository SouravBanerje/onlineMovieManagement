<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}
 
.navbar {
  overflow: hidden;
  background-color: #333;
}
.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
 
.dropdown {
  float: left;
  overflow: hidden;
}
 
.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}
 
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.navbar a {

  float: left;

  font-size: 16px;

  color: white;

  text-align: center;

  padding: 14px 16px;

  text-decoration: none;

}
 
.dropdown {

  float: left;

  overflow: hidden;

}
 
.dropdown .dropbtn {

  font-size: 16px;  

  border: none;

  outline: none;

  color: white;

  padding: 14px 16px;

  background-color: inherit;

  font-family: inherit;

  margin: 0;

}
 
.navbar a:hover, .dropdown:hover .dropbtn {

  background-color: red;

}
 
.dropdown-content {

  display: none;

  position: absolute;

  background-color: #f9f9f9;

  min-width: 160px;

  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);

  z-index: 1;

}
 
.dropdown-content a {

  float: none;

  color: black;

  padding: 12px 16px;

  text-decoration: none;

  display: block;

  text-align: left;

}
 
.dropdown-content a:hover {

  background-color: #ddd;

}
 
.dropdown:hover .dropdown-content {

  display: block;

}
</style>

 
</head>
<body>

	<div align="center">
<h1 style="font-family:Monotype Corsiva">Welcome To Online Movie Booking System</h1>
<div class="navbar">
<div class="dropdown">
<button class="dropbtn">Movie Management
</button>
<div class="dropdown-content">
<a href="/">Movie Addition</a>
<a href="/">Movie Update</a>
<a href="/">Movie Deletion</a>
<a href="/">Movie Reports</a>
</div>
</div>


<div class="dropdown">
<button class="dropbtn">Theater Management
</button>
<div class="dropdown-content">
<a href="/">Theater Addition</a>
<a href="/">Theater Update</a>
<a href="/">Theater Deletion</a>
<a href="/">Theater Reports</a>
</div>
</div>
<div class="dropdown">
<button class="dropbtn">Show time Management
</button>
<div class="dropdown-content">
<a href="/">Show time Addition</a>
<a href="/">Show time Update</a>
<a href="/">Show time Deletion</a>
<a href="/">Show time Report</a>
</div>
</div>

<div class="dropdown">
<button class="dropbtn">Theater Management
</button>
<div class="dropdown-content">
<a href="/">Theater Addition</a>
<a href="/">Theater Update</a>
<a href="/">Theater Deletion</a>
<a href="/">Theater Reports</a>
</div>
</div>
<div class="dropdown">
<button class="dropbtn">Show time Management
</button>
<div class="dropdown-content">
<a href="/">Show time Addition</a>
<a href="/">Show time Update</a>
<a href="/">Show time Deletion</a>
<a href="/">Show time Report</a>
</div>
</div>
 
<div class="dropdown">
<button class="dropbtn">Booking Management
</button>
<div class="dropdown-content">
<a href="/">New Booking</a>
<a href="/">Booking Update</a>
<a href="/">Cancellation</a>
<a href="/">Booking Report</a>
</div>
</div>
<a href="/logout">Logout</a>
</div>
</div>
 

</body>
</html>


