<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Full-screen background image */
        body {
            background-image: url("https://i.imgur.com/VYp2KCa.jpg");
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
        }

        /* Registration form container */
        .registration-container {
            background-color: rgba(0, 0, 0, 0.7); /* Dark semi-transparent background */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            width: 400px;
        }

        /* Heading style */
        h2 {
            color: #FFD700; /* Yellow color */
            margin-bottom: 20px;
            font-size: 1.8rem;
            font-weight: bold; /* Make the text bold */
            text-align: center; /* Center the heading */
        }

        /* Input label and control styles */
        .form-label {
            color: #FFD700; /* Label color */
        }

        .form-control {
            border-radius: 6px;
        }

        /* Button styles */
        .btn-primary {
            background-color: #FFD700; /* Yellow button */
            color: #000;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #FFC107; /* Darker yellow on hover */
        }

        .btn-secondary {
            border-radius: 6px;
        }

        /* Responsive layout */
        @media (max-width: 768px) {
            .registration-container {
                width: 90%;
            }
        }
    </style>

    <script type="text/javascript">
        function passwordCheck() {
            var pass1 = (document.getElementById("pass1").value).toString();
            var pass2 = (document.getElementById("pass2").value).toString();
			if(pass1.length<5 || pass1.length>10){
				alert("Password length must ne between 5 to 10 characters");
				return;
			}
            
            if (pass1 === pass2) {
                document.getElementById("registrationForm").submit();
            } else {
                alert("Passwords do not match!");
            }
        }
    </script>
</head>
<body>

<div class="registration-container">
    <h2>Register New User</h2>
    <form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord" class="mt-4">

        <div class="mb-3">
            <label for="username" class="form-label">Enter New User Id</label>
            <form:input path="username" id="username" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="pass1" class="form-label">Enter New Password</label>
            <form:input type="password" id="pass1" path="password" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="pass2" class="form-label">Re-type New Password</label>
            <input type="password" id="pass2" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="name" class="form-label">Enter User's Full Name</label>
            <form:input path="name" id="name" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Enter Email</label>
            <form:input path="email" id="email" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="role" class="form-label">Select User Role</label>
            <form:input list="types" name="type" id="type" path="role" class="form-control" />
            <datalist id="types">
                <option value="Customer"></option>
                <option value="Admin"></option>
            </datalist>
        </div>

        <div class="d-grid gap-2">
            <button type="button" class="btn btn-primary" onclick="passwordCheck();">Submit</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </div>

    </form:form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>


 --%>
 
 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Full-screen background image */
        body {
            background-image: url("https://wallpapercave.com/wp/wp2714484.png");
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
        }

        /* Registration form container */
        .registration-container {
            background-color: rgba(0, 0, 0, 0.7); /* Dark semi-transparent background */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            width: 400px;
        }

        /* Heading style */
        h2 {
            color: #FFD700; /* Yellow color */
            margin-bottom: 20px;
            font-size: 1.8rem;
            font-weight: bold; /* Make the text bold */
            text-align: center; /* Center the heading */
        }

        /* Input label and control styles */
        .form-label {
            color: #FFD700; /* Label color */
        }

        .form-control {
            border-radius: 6px;
        }

        /* Button styles */
        .btn-primary {
            background-color: #FFD700; /* Yellow button */
            color: #000;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #FFC107; /* Darker yellow on hover */
        }

        .btn-secondary {
            border-radius: 6px;
        }

        /* Responsive layout */
        @media (max-width: 768px) {
            .registration-container {
                width: 90%;
            }
        }
    </style>

    <script type="text/javascript">
        function passwordCheck() {
            var pass1 = (document.getElementById("pass1").value).toString();
            var pass2 = (document.getElementById("pass2").value).toString();
			if(pass1.length<5 || pass1.length>10){
				alert("Password length must ne between 5 to 10 characters");
				return;
			}
            
            if (pass1 === pass2) {
                document.getElementById("registrationForm").submit();
            } else {
                alert("Passwords do not match!");
            }
        }
    </script>
</head>
<body>

<div class="registration-container">
    <h2 style="color:white">Register New User</h2>
    <form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord" class="mt-4">

        <div class="mb-3">
            <label for="username" class="form-label">Enter New User Id</label>
            <form:input path="username" id="username" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="pass1" class="form-label">Enter New Password</label>
            <form:input type="password" id="pass1" path="password" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="pass2" class="form-label">Re-type New Password</label>
            <input type="password" id="pass2" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="name" class="form-label">Enter User's Full Name</label>
            <form:input path="name" id="name" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Enter Email</label>
            <form:input path="email" id="email" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="role" class="form-label">Select User Role</label>
            <form:input list="types" name="type" id="type" path="role" class="form-control" />
            <datalist id="types">
                <option value="Customer"></option>
                <option value="Admin"></option>
            </datalist>
        </div>

        <div class="d-grid gap-2">
            <button type="button" class="btn btn-primary" onclick="passwordCheck();">Submit</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </div>

    </form:form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>