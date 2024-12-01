<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Theatre Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 8px 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Theatre Movie Show Details</h1>

    <c:if test="${not empty theatreData}">
        <c:forEach var="theatreEntry" items="${theatreData}">
            <h2>Theatre: ${theatreEntry.key}</h2>
            <table>
                <thead>
                    <tr>
                        <th>Screen Name</th>
                        <th>Movie Name</th>
                        <th>Show Time</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through each DTO for the theatre -->
                    <c:forEach var="dto" items="${theatreEntry.value}">
                        <tr>
                            <td>${dto.screenName}</td>
                            <td>${dto.movieName}</td>
                            <td>${dto.showTimeName}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:forEach>
    </c:if>

    <c:if test="${empty theatreData}">
        <p>No data available to display.</p>
    </c:if>

</body>
</html>
 --%>
 
 
<%--  
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Theatre Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 8px 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Theatre Movie Show Details</h1>

    <c:if test="${not empty theatreData}">
        <c:forEach var="theatreEntry" items="${theatreData}">
            <h2>Theatre: ${theatreEntry.key}</h2> <!-- Theatre name displayed here -->
            <table>
                <thead>
                    <tr>
                    	<th>Screen No</th>
                        <th>Screen Name</th>
                        <th>Movie Name</th>
                        <th>Show Time</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through each DTO for the theatre -->
                    <c:forEach var="dto" items="${theatreEntry.value}">
                        <tr>
                        	<td>${dto.screenId}</td>
                            <td>${dto.screenName}</td>
                            <td>${dto.movieName}</td>
                            <td>${dto.showTimeName}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:forEach>
    </c:if>

    <c:if test="${empty theatreData}">
        <p>No data available to display.</p>
    </c:if>

</body>
</html> --%>
<%--  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Theatre Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 8px 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Theatre Movie Show Details</h1>

    <c:if test="${not empty theatreData}">
        <c:forEach var="theatreEntry" items="${theatreData}">
            <h2>Theatre: ${theatreEntry.key}</h2> <!-- Theatre name displayed here -->
            <p><strong>Location:</strong> ${theatreEntry.value.location}</p> <!-- Theatre location -->
            <p><strong>Number of Screens:</strong> ${theatreEntry.value.screens}</p> <!-- Number of screens -->
            
            <table>
                <thead>
                    <tr>
                    	<th>Screen No</th>
                        <th>Screen Name</th>
                        <th>Movie Name</th>
                        <th>Show Time</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through each DTO for the theatre -->
                    <c:forEach var="dto" items="${theatreEntry.value.shows}">
                        <tr>
                        	<td>${dto.screenId}</td>
                            <td>${dto.screenName}</td>
                            <td>${dto.movieName}</td>
                            <td>${dto.showTimeName}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:forEach>
    </c:if>

    <c:if test="${empty theatreData}">
        <p>No data available to display.</p>
    </c:if>

</body>
</html> --%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <!-- Display movie name and ID -->
        <h1>Book Your Movie</h1>
        <p>Movie ID: <strong>${movieId}</strong></p>

        <!-- Movie Shows -->
        <div class="movie-shows">
            <h2>Available Movie Shows</h2>
            <table border="1">
                <thead>
                    <tr>
                        <th>Theatre</th>
                        <th>Screen</th>
                        <th>Movie Name</th>
                        <th>Show Time</th>
                        <th>Royal Seats</th>
                        <th>Premier Seats</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="theatreEntry" items="${theatreData}">
                        <tr>
                            <td colspan="6"><strong>${theatreEntry.value.theatreName}</strong></td>
                        </tr>
                        <c:forEach var="show" items="${theatreEntry.value.shows}">
                            <tr>
                                <td>${theatreEntry.value.theatreName}</td>
                                <td>${show.screenName}</td>
                                <td>${show.movieName}</td>
                                <td>${show.showTimeName}</td>
                                <td>${show.royalSeatNumber} - Booked: ${show.royalBooked}</td>
                                <td>${show.premierSeatNumber} - Booked: ${show.premierBooked}</td>
                            </tr>
                        </c:forEach>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Movie Show Details -->
        <div class="movie-show-details">
            <h2>Movie Show Information</h2>
            <table border="1">
                <thead>
                    <tr>
                        <th>Show Time</th>
                        <th>Available Royal Seats</th>
                        <th>Available Premier Seats</th>
                        <th>Booked Royal Seats</th>
                        <th>Booked Premier Seats</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="movieShow" items="${movieShowList}">
                        <tr>
                            <td>${movieShow.showTimeName}</td>
                            <td>${movieShow.royalSeatNumber}</td>
                            <td>${movieShow.premierSeatNumber}</td>
                            <td>${movieShow.royalBooked}</td>
                            <td>${movieShow.premierBooked}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Movie Booking Form -->
        <div class="booking-form">
            <h2>Book Your Seats</h2>
            <form action="/bookSeats" method="post">
                <label for="screen">Choose Screen:</label>
                <select name="screenId" id="screen">
                    <c:forEach var="screen" items="${theatreData}">
                        <option value="${screen.value.screenId}">${screen.value.screenName}</option>
                    </c:forEach>
                </select>
                
                <label for="showTime">Choose Show Time:</label>
                <select name="showTimeId" id="showTime">
                    <c:forEach var="show" items="${movieShowList}">
                        <option value="${show.showTimeId}">${show.showTimeName}</option>
                    </c:forEach>
                </select>

                <label for="royalSeats">Royal Seats:</label>
                <input type="number" id="royalSeats" name="royalSeats" min="0" max="${movieShow.royalSeatNumber}" />

                <label for="premierSeats">Premier Seats:</label>
                <input type="number" id="premierSeats" name="premierSeats" min="0" max="${movieShow.premierSeatNumber}" />

                <button type="submit">Book Now</button>
            </form>
        </div>
    </div>

    <script src="scripts.js"></script>
</body>
</html>

 --%>

<%--  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Movie Show</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 8px 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        button {
            padding: 6px 10px;
            margin: 2px;
            cursor: pointer;
        }
        .update-btn {
            background-color: #4CAF50;
            color: white;
            border: none;
        }
        .delete-btn {
            background-color: #f44336;
            color: white;
            border: none;
        }
    </style>
</head>
<body>
    <h1>Book Movie Show: ${movie.movieName}</h1>
    <p><strong>Movie ID:</strong> ${movie.movieId}</p>

    <c:if test="${not empty theatreData}">
        <c:forEach var="theatreEntry" items="${theatreData}">
            <h2>Theatre: ${theatreEntry.key}</h2> <!-- Theatre name displayed here -->
            <img src="${theatreEntry.value.imgUrl}" alt="Theatre Image" />
            <p><strong>Location:</strong> ${theatreEntry.value.location}</p>
            <p><strong>Number of Screens:</strong> ${theatreEntry.value.screens}</p>

            <!-- Show all the screens for the theatre -->
            <table>
                <thead>
                    <tr>
                        <th>Screen Name</th>
                        <th>Movie Name</th>
                        <th>Show Time</th>
                        
                        <th>Select Show</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through each MovieShowDTO for the theatre -->
                    <c:forEach var="dto" items="${theatreEntry.value.movieShows}">
                        <tr>
                            <td>${dto.screenName}</td>
                            <td>${dto.movieName}</td>
                            <td>
                                <strong>Name:</strong> ${dto.showTimeName}<br>
                                
                            </td>
                            
                            <td>
                                <form action="/bookMovie/${movieId}" method="POST">
                                    
                                    <button type="submit" class="update-btn">Book Now</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:forEach>
    </c:if>

    <c:if test="${empty theatreData}">
        <p>No data available to display.</p>
    </c:if>

</body>
</html>
 --%>

 
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Theatre Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 8px 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        button {
            padding: 6px 10px;
            margin: 2px;
            cursor: pointer;
        }
        .update-btn {
            background-color: #4CAF50;
            color: white;
            border: none;
        }
        .delete-btn {
            background-color: #f44336;
            color: white;
            border: none;
        }
    </style>
</head>
<body>
    <h1>Theatre Movie Show Details</h1>

    <c:if test="${not empty theatreData}">
        <c:forEach var="theatreEntry" items="${theatreData}">
        	<img src="${theatreEntry.value.imgUrl}" >
            <h2>Theatre: ${theatreEntry.key}</h2> <!-- Theatre name displayed here -->
            <p><strong>Location:</strong> ${theatreEntry.value.location}</p> <!-- Theatre location -->
            <p><strong>Number of Screens:</strong> ${theatreEntry.value.screens}</p> <!-- Number of screens -->
           

            <!-- Show all the screens for the theatre -->
            <table>
                <thead>
                    <tr>
                        <th>Screen Name</th>
                        <th>Movie Name</th>
                        <th>Show Time</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through each DTO for the theatre -->
                    <c:forEach var="dto" items="${theatreEntry.value.shows}">
                        <tr>
                            <td>${dto.screenName}</td>
                            <td>${dto.movieName}</td>
                            <td>${dto.showTimeName}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>


        </c:forEach>
    </c:if>

    <c:if test="${empty theatreData}">
        <p>No data available to display.</p>
    </c:if>

</body>
</html>
 --%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Theatre Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 8px 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        button {
            padding: 6px 10px;
            margin: 2px;
            cursor: pointer;
        }
        .update-btn {
            background-color: #4CAF50;
            color: white;
            border: none;
        }
        .delete-btn {
            background-color: #f44336;
            color: white;
            border: none;
        }
    </style>
</head>
<body>
    <h1>Theatre Movie Show Details</h1>

    <c:if test="${not empty theatreData}">
        <c:forEach var="theatreEntry" items="${theatreData}">
            <img src="${theatreEntry.value.imgUrl}" alt="Theatre Image" >
            <h2>Theatre: ${theatreEntry.key}</h2> <!-- Theatre name displayed here -->
            <p><strong>Location:</strong> ${theatreEntry.value.location}</p> <!-- Theatre location -->
            <p><strong>Number of Screens:</strong> ${theatreEntry.value.screens}</p> <!-- Number of screens -->

            <!-- Form for each theatre -->
            <form action="/submitBooking1" method="post">
                <!-- Hidden field to send the theatre name -->
                <input type="hidden" name="theatreName" value="${theatreEntry.key}">
                
                <!-- Show all the screens for the theatre -->
                <table>
                    <thead>
                        <tr>
                            <th>Screen Name</th>
                            <th>Movie Name</th>
                            <th>Show Time</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Loop through each DTO for the theatre -->
                        <c:forEach var="dto" items="${theatreEntry.value.shows}">
                            <tr>
                                <td>${dto.screenName}</td>
                                <td>${dto.movieName}</td>
                                <td>${dto.showTimeName}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <!-- Submit button for each theatre -->
                <button type="submit" class="update-btn">Submit Booking for ${theatreEntry.key}</button>
            </form>
        </c:forEach>
    </c:if>

 

</body>
</html>
  --%>
  
  
<%--  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Booking</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        .theatre-container {
            margin-bottom: 30px;
        }
        .theatre-header {
            font-size: 20px;
            font-weight: bold;
        }
        .theatre-info {
            margin-bottom: 10px;
        }
        .submit-button {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Book Your Movie Tickets</h1>
    <p>Movie ID: ${movieId}</p>
    
    <!-- Loop through theatres -->
    <c:forEach var="theatreEntry" items="${theatreData}">
        <div class="theatre-container">
            <div class="theatre-header">${theatreEntry.key}</div>
            
            <!-- Theatre Details -->
            <div class="theatre-info">
                <p><strong>Location:</strong> ${theatreEntry.value.location}</p>
                <p><img src="${theatreEntry.value.imgUrl}" alt="Theatre Image" style="max-width: 300px;"></p>
            </div>
            
            <!-- Shows -->
            <form action="/bookSeats" method="post">
                <input type="hidden" name="theatreId" value="${theatreEntry.value.theatreId}" />
                <input type="hidden" name="movieId" value="${movieId}" />
                <input type="hidden" name="movieName" value="${movieId}" /> 
                
                <c:choose>
                    <c:when test="${not empty theatreEntry.value.shows}">
                        <table>
                            <thead>
                                <tr>
                                    <th>Screen Name</th>
                                    <th>Movie Name</th>
                                    <th>Show Time</th>
                                    <th>Royal Seats Available</th>
                                    <th>Premier Seats Available</th>
                                    <th>Seat Type</th>
                                    <th>Seats to Book</th>
                                    <th>Select</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="dto" items="${theatreEntry.value.shows}">
                                    <tr>
                                        <td>${dto.screenName}</td>
                                        <td>${dto.movieName}</td>
                                        <td>${dto.showTimeName}</td>
                                        <td>${dto.royalSeatNumber - dto.royalBooked}</td>
                                        <td>${dto.premierSeatNumber - dto.premierBooked}</td>
                                        <td>
                                            <select name="seatType_${dto.showTimeName}">
                                                <option value="Royal">Royal</option>
                                                <option value="Premier">Premier</option>
                                            </select>
                                        </td>
                                        <td>
                                            <input type="number" name="numberOfSeats_${dto.showTimeName}" min="1" />
                                        </td>
                                        <td>
                                            <input type="radio" name="selectedShowTime" value="${dto.showTimeName}" />
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:when>
                    <c:otherwise>
                        <p>No shows available for this theatre.</p>
                    </c:otherwise>
                </c:choose>

                <button type="submit" class="submit-button">Book Seats for ${theatreEntry.key}</button>
            </form>
        </div>
    </c:forEach>
</body>
</html> --%>

  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("https://i.imgur.com/VQ4PiHd.jpg") no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            font-size: 2.5em;
            margin-top: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
        }

        p {
            font-size: 1.2em;
            text-align: center;
            margin: 10px 0;
        }

        .theatre-container {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
            margin: 20px auto;
            width: 90%;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.8);
        }

        .theatre-header {
            font-size: 1.8em;
            font-weight: bold;
            margin-bottom: 10px;
            text-align: center;
        }

        .theatre-info {
            text-align: center;
            margin-bottom: 20px;
        }

        img {
            max-width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(255, 255, 255, 0.3);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #fff;
        }

        th, td {
            padding: 10px;
            text-align: center;
            font-size: 1em;
        }

        th {
            background-color: #4CAF50;
            color: #fff;
            text-transform: uppercase;
        }

        td {
            background-color: rgba(255, 255, 255, 0.1);
        }

        select, input[type="number"], input[type="radio"] {
            padding: 5px;
            font-size: 1em;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            font-size: 1.2em;
            color: #fff;
            background-color: #f57c00;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
        }

        button:hover {
            background-color: #ef6c00;
        }

        .no-shows {
            text-align: center;
            font-size: 1.2em;
            margin-top: 10px;
            color: #ffb74d;
        }
    </style>
</head>
<body>
    <h1>Book Your Movie Tickets</h1>
    <p>Movie ID: ${movieId}</p>

    <!-- Loop through theatres -->
    <c:forEach var="theatreEntry" items="${theatreData}">
        <div class="theatre-container">
            <div class="theatre-header">${theatreEntry.key}</div>

            <!-- Theatre Details -->
            <div class="theatre-info">
                <p><strong>Location:</strong> ${theatreEntry.value.location}</p>
                <p><img src="${theatreEntry.value.imgUrl}" alt="Theatre Image"></p>
            </div>

            <!-- Shows -->
            <form action="/bookSeats" method="post">
                <input type="hidden" name="theatreId" value="${theatreEntry.value.theatreId}" />
                <input type="hidden" name="movieId" value="${movieId}" />
                
                

                <c:choose>
                    <c:when test="${not empty theatreEntry.value.shows}">
                        <table>
                            <thead>
                                <tr>
                                    <th>Screen Name</th>
                                    <th>Movie Name</th>
                                    <th>Show Time</th>
                                    <th>Royal Seats Available</th>
                                    <th>Premier Seats Available</th>
                                    <th>Seat Type</th>
                                    <th>Seats to Book</th>
                                    <th>Select</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="dto" items="${theatreEntry.value.shows}">
                                <input type="hidden" name="movieName" value="${dto.movieName}" />
                                    <tr>
                                        <td>${dto.screenName}</td>
                                        <td>${dto.movieName}</td>
                                        <td>${dto.showTimeName}</td>
                                        <td>${dto.royalSeatNumber - dto.royalBooked}</td>
                                        <td>${dto.premierSeatNumber - dto.premierBooked}</td>
                                        <td>
                                            <select name="seatType_${dto.showTimeName}">
                                                <option value="Royal">Royal</option>
                                                <option value="Premier">Premier</option>
                                            </select>
                                        </td>
                                        <td>
                                            <input type="number" name="numberOfSeats_${dto.showTimeName}" min="1" />
                                        </td>
                                        <td>
                                            <input type="radio" name="selectedShowTime" value="${dto.showTimeName}" />
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:when>
                    <c:otherwise>
                        <p class="no-shows">No shows available for this theatre.</p>
                    </c:otherwise>
                </c:choose>

                <button type="submit">Book Seats for ${theatreEntry.key}</button>
            </form>
        </div>
    </c:forEach>
</body>
</html>
  