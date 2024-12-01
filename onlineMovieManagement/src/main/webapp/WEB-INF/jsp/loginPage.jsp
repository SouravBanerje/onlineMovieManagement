<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <style>
        /* Full-screen background image */
        body {
            background-image: url("https://i.imgur.com/VYp2KCa.jpg");
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            font-family: 'Arial', sans-serif;
        }

        /* Navigation bar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.8);
            padding: 10px 20px;
            color: #FFD700;
            font-size: 1.5rem;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
        }

        /* Dark transparent container */
        .login-container {
            background-color: rgba(0, 0, 0, 0.7); /* Dark semi-transparent background */
            padding: 40px;
            border-radius: 12px;
            width: 350px;
            text-align: center;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            margin: auto; /* Center the login container */
        }

        /* Welcome message */
        .login-container h2 {
            color: #FFD700; /* Yellow color */
            margin-bottom: 20px;
            font-size: 1.8rem;
            font-weight: bold; /* Make the text bold */
            padding: 10px; /* Add some padding */
            border-radius: 8px; /* Rounded corners for the background */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6); /* Add text shadow for depth */
        }

        /* Input labels */
        .form-label {
            color: #FFD700;
            font-size: 1rem;
            font-weight: 500;
            text-align: left;
            display: block;
            margin-bottom: 8px;
        }

        /* Input fields */
        .form-control {
            width: 100%;
            height: 45px;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 1rem;
            border: none;
            border-radius: 6px;
        }

        /* Input focus styling */
        .form-control:focus {
            outline: none;
            box-shadow: 0 0 5px rgba(255, 215, 0, 0.5);
        }

        /* Button styling */
        .btn-login {
            background-color: #FFD700; /* Yellow button */
            color: #000;
            width: 100%;
            height: 45px;
            border: none;
            font-size: 1.2rem;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        /* Button hover effect */
        .btn-login:hover {
            background-color: #FFC107;
        }

        /* Register button styling */
        .register-button {
            background-color: #FFD700;
            color: #000;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .register-button:hover {
            background-color: #FFC107;
        }

        /* Responsive layout */
        @media (max-width: 768px) {
            .login-container {
                width: 90%;
            }
        }
    </style>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Navigation bar -->
<div class="navbar">
    <div>Movie Booking</div>
    <a href="/register" class="register-button">Register</a>
</div>

<div class="login-container">
    <h2>Welcome</h2>
    <form action="/login" method="post">
        <label for="username" class="form-label">Username</label>
        <input type="text" class="form-control" id="username" name="username" required>

        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>

        <button type="submit" class="btn-login">Login</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

