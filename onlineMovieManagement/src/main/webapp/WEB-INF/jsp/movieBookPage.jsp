<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Book</title>
</head>
<body>
<div align="center">
<h1><u>Movie Details</u></h1>
<h2>

<form action="/" method="post">

<table>
<tr>
<td>The Movie Id :</td><td>${movie.movieId}</td>
</tr>
<tr>
<td>Movie Name :</td><td>${movie.movieName}</td>
</tr>
<tr>
<td>Movie Language :</td><td>${movie.language}</td>
</tr>
<tr>
<td>Movie Genre :</td><td>${movie.genre}</td>
</tr><tr>
<td>Movie Duration :</td><td>${movie.duration}</td>
</tr><tr>
<td>Movie Ratings :</td><td>${movie. ratings}</td>
</tr>
</table>
</h2>
</div>

<br/>
<div align="center">
<h2><u>ShowTimes</u></h2>
<h3>
<table border="2">
<tr>
<th>Show Time Name</th>

<th>Royal Seat Number</th>
<th>Premier Seat Number</th>
<th>Royal Seat Available</th>
<th>Premier Seat Available</th>
<th>Select</th>
</tr>
<c:forEach items="${movieShowList}" var="movieShow">
<tr>
<td>${movieShow.showTimeName}</td>
<td>${movieShow.royalSeatNumber}</td>
<td>${movieShow.premierSeatNumber}</td>
<c:set var="availableSeats" scope="session" value="${movieShow.royalSeatNumber-movieShow.royalBooked} "/>
<td>${availableSeats}</td>
<c:set var="availableSeats" scope="session" value="${movieShow.premierSeatNumber-movieShow.premierBooked} "/>
<td>${availableSeats}</td>
<td><input type="radio" name="selection" value="${movieShow.showTimeName} "/>
</tr>
</c:forEach>
</table>
<button type="submit">Book</button>
<button type="reset">Reset</button>
</form>
</h3>
</div>


</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Movie Booking</title>
</head>
<body>
<div align="center">
    <h1><u>Movie Details</u></h1>
    <h2>
        <table>
            <tr>
                <td>The Movie Id:</td>
                <td>${movie.movieId}</td>
            </tr>
            <tr>
                <td>Movie Name:</td>
                <td>${movie.movieName}</td>
            </tr>
            <tr>
                <td>Movie Language:</td>
                <td>${movie.language}</td>
            </tr>
            <tr>
                <td>Movie Genre:</td>
                <td>${movie.genre}</td>
            </tr>
            <tr>
                <td>Movie Duration:</td>
                <td>${movie.duration}</td>
            </tr>
            <tr>
                <td>Movie Ratings:</td>
                <td>${movie.ratings}</td>
            </tr>
        </table>
    </h2>
</div>

<br/>
<div align="center">
    <h2><u>ShowTimes</u></h2>
    <form action="/submitBooking/${movie.movieId}/${movieShowList.showTimeName}  " method="post">
        <!-- Hidden fields to send movie details -->
        <input type="hidden" name="movieId" value="${movie.movieId}" />
        <input type="hidden" name="movieName" value="${movie.movieName}" />

        <h3>
            <table border="2">
                <tr>
                    <th>Show Time Name</th>
                    <th>Royal Seat Number</th>
                    <th>Premier Seat Number</th>
                    <th>Royal Seats Available</th>
                    <th>Premier Seats Available</th>
                    <th>Seat Type</th>
                    <th>Seats to Book</th>
                    <th>Select</th>
                </tr>
                <c:forEach items="${movieShowList}" var="movieShow">
                    <tr>
                        <td>${movieShow.showTimeName}</td>
                        <td>${movieShow.royalSeatNumber}</td>
                        <td>${movieShow.premierSeatNumber}</td>
                        <td>${movieShow.royalSeatNumber - movieShow.royalBooked}</td>
                        <td>${movieShow.premierSeatNumber - movieShow.premierBooked}</td>
                        <td>
                            <select name="seatType_${movieShow.showTimeName}">
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
            </table>
            <br/>
            <button type="submit">Book</button>
            <button type="reset">Reset</button>
        </h3>
    </form>
</div>
</body>
</html>
