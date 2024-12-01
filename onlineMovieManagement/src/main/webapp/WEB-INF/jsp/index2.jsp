<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Movie Booking System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url("https://i.imgur.com/ZqgQm8r.jpg"); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: white;
            margin: 0;
            padding: 20px;
            

		    background-attachment: fixed;

        }

        h1 {
            font-family: "Monotype Corsiva", cursive;
            text-align: center;
            margin-top: 50px;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
        }

        .navbar {
            display: flex; /* Use flexbox for even spacing */
            justify-content: space-between; /* Space elements evenly */
            align-items: center; /* Center items vertically */
            background-color: rgba(51, 51, 51, 0.8);
            border-radius: 5px;
            padding: 10px 20px; /* Adjust padding for better spacing */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        .navbar a, .dropdown .dropbtn {
            font-size: 18px; /* Increase font size for better readability */
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            border: none; /* Remove border */
            background: none; /* Remove background */
            cursor: pointer; /* Show pointer cursor */
            transition: background-color 0.3s, transform 0.3s; /* Added transform for scaling */
        }

        .navbar a:hover, .dropdown .dropbtn:hover {
            background-color: red;
            transform: scale(1.05); /* Scale effect on hover */
        }

        .dropdown {
            position: relative; /* Needed for absolute positioning of dropdown */
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
            opacity: 0; /* Start hidden */
            transition: opacity 0.3s ease; /* Smooth fade effect */
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
            transition: background-color 0.3s; /* Smooth background color transition */
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
            opacity: 1; /* Fade in */
        }

        /* Additional styling for responsiveness */
        @media screen and (max-width: 600px) {
            .navbar a, .dropdown .dropbtn {
                font-size: 16px; /* Slightly smaller on small screens */
                padding: 10px;
            }

            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div align="center">
        <h1>Welcome To Online Movie Booking System</h1>
        <div class="navbar">
            <div class="dropdown">
                <button class="dropbtn">Movie Management</button>
                <div class="dropdown-content">
                   <!--  <a href="/">Movie Addition</a>
                    <a href="/">Movie Update</a>
                    <a href="/">Movie Deletion</a> -->
                    <a href="/">Movie Reports</a>
                </div>
            </div>

         <div class="dropdown">
                <button class="dropbtn">Theater Management</button>
                <div class="dropdown-content">
                    <!-- <a href="/">Theater Addition</a>
                    <a href="/">Theater Update</a>
                    <a href="/">Theater Deletion</a> -->
                    <a href="/">Theater Reports</a>
                </div>
            </div> 

            <!-- <div class="dropdown">
                <button class="dropbtn">Showtime Management</button>
                <div class="dropdown-content">
                    <a href="/">Showtime Addition</a>
                    <a href="/">Showtime Update</a>
                    <a href="/">Showtime Deletion</a>
                    <a href="/">Showtime Report</a>
                </div>
            </div> -->

            <div class="dropdown">
                <button class="dropbtn">Booking Management</button>
                <div class="dropdown-content">
                    <a href="/">New Booking</a>
                    <a href="/">Booking Update</a>
                    <a href="/">Cancellation</a>
                   <!--  <a href="/">Booking Report</a> -->
                </div>
            </div>
            <a href="/logout">Logout</a>
        </div>
    </div>
</body>
</html>
 --%>
 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Movie Booking System</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            background-image: url("https://i.imgur.com/EJyP4oi.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
        }

        h1 {
            font-family: "Poppins", sans-serif;
            text-align: center;
            margin-top: 150px;
            text-shadow: 3px 3px 10px rgba(0, 191, 255, 0.8), 0 0 20px #00bfff, 0 0 30px #00bfff;
            font-size: 4rem;
            text-transform: uppercase;
            color: linear-gradient(90deg, #00bfff, #1e90ff);
            letter-spacing: 3px;
            animation: glowAnimation 1.5s ease-in-out infinite alternate;
        }

        @keyframes glowAnimation {
            0% {
                text-shadow: 0 0 25px #00bfff, 0 0 35px #1e90ff, 0 0 45px #1e90ff, 0 0 60px #00bfff;
            }
            100% {
                text-shadow: 0 0 50px #1e90ff, 0 0 70px #00bfff, 0 0 100px #00bfff, 0 0 150px #1e90ff;
            }
        }

        .navbar {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: rgba(0, 0, 255, 0.8);
            padding: 20px;
            width: 100%;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.4);
            position: fixed;
            top: 0;
            z-index: 100;
        }

        .navbar a, .dropdown .dropbtn {
            font-size: 18px;
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
            background-color: transparent;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            margin: 0 10px;
            border-radius: 8px;
            font-family: 'Poppins', sans-serif;
        }

        .navbar a:hover, .dropdown .dropbtn:hover {
            background-color: #00bfff;
            transform: scale(1.1);
            box-shadow: 0 0 10px 2px rgba(0, 191, 255, 0.6);
            color: white;
        }

        .dropdown {
            position: relative;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            opacity: 0;
            transition: opacity 0.3s ease;
            border-radius: 8px;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
            border-radius: 8px;
            transition: background-color 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #00bfff;
            color: white;
        }

        .dropdown:hover .dropdown-content {
            display: block;
            opacity: 1;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: rgba(0, 0, 128, 0.8);
            color: white;
            width: 100%;
            font-size: 16px;
            position: fixed;
            bottom: 0;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.4);
            text-shadow: 2px 2px 5px rgba(0, 191, 255, 0.6);
        }

        footer p {
            margin: 0;
        }

        .content {
            margin-top: 200px; /* Adjust the space below the header */
            text-align: center;
        }

        .navbar a {
            margin: 0 15px;
        }

        @media screen and (max-width: 600px) {
            .navbar {
                flex-direction: column;
            }

            .navbar a, .dropdown .dropbtn {
                font-size: 16px;
                padding: 12px 14px;
                margin: 5px 0;
            }

            h1 {
                font-size: 2.5rem;
            }
        }
    </style>
</head>
<body>

    <div class="navbar">
        <div class="dropdown">
            <button class="dropbtn">Movie Management</button>
            <div class="dropdown-content">
                <!-- <a href="/addMovie">Movie Addition</a>
                <a href="/movieUpdate">Movie Update</a>
                <a href="/movieDeletion">Movie Deletion</a> -->
                <a href="/movieReport1">Movie Reports</a>
                <a href="/movieLanguage">Find By Language</a>
                <a href="/showTimeReport1">Showtime Report</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">Theater Management</button>
            <div class="dropdown-content">
               <!--  <a href="/">Theater Addition</a>
                <a href="/">Theater Update</a>
                <a href="/">Theater Deletion</a> -->
                <a href="/viewDetails">Theater Reports</a>
            </div>
        </div>

        <!-- <div class="dropdown">
            <button class="dropbtn">Showtime Management</button>
            <div class="dropdown-content">
                <a href="/addShowTime">Showtime Addition</a>
                <a href="/showTimeReport">Showtime Report</a>
            </div>
        </div> -->

        <div class="dropdown">
            <button class="dropbtn">Booking Management</button>
            <div class="dropdown-content">
                <a href="/movieLanguage">Book By Movie Language</a>
                <!-- <a href="/">Booking Update</a>
               -->
               <!--  <a href="/">Booking Report</a> -->
                <a href="/cancelTicket">Cancellation</a> 
            </div>
        </div>
        <a href="/logout">Logout</a>
    </div>

    <h1>Welcome To Online Movie Booking System</h1>

    <div class="content">
        <!-- Additional content can be added here if needed -->
    </div>

    <footer>
        <p>&copy; 2024 Online Movie Booking System. All rights reserved.</p>
    </footer>

</body>
</html>
 