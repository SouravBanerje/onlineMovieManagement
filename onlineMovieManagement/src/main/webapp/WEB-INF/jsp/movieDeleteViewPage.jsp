<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Delete Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://i.imgur.com/yQ7jnIq.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: #ffffff;
        }
        .report-container {
            background-color: rgba(30, 30, 30, 0.9);
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            margin: 40px auto;
            max-width: 900px;
        }
        h1 {
            color: #ffcc00;
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: rgba(255, 255, 255, 0.1);
        }
        table th, table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #666;
            color: #ffffff;
        }
        table th {
            background-color: rgba(255, 255, 255, 0.2);
        }
        .btn-link {
            color: #ffcc00;
            text-decoration: none;
        }
        .btn-link:hover {
            color: #e6b800;
        }
        .return-link {
            color: #ffcc00;
            text-decoration: none;
            text-align: center;
            display: block;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="report-container">
    <h1><u>Movie Deletion</u></h1>
    <table class="table table-bordered table-striped table-dark">
        <thead>
            <tr>
                <th>Movie Number</th>
                <th>Movie Name</th>
                <th>Language</th>
                <th>Genre</th>
                <th>Duration</th>
                <th>Rating</th>
                <th>Show Details</th>
                <th>Deletion</th>
               
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${movieList}" var="movie">
                <tr>
                    <td>${movie.movieId}</td>
                    <td>${movie.movieName}</td>
                    <td>${movie.language}</td>
                    <td>${movie.genre}</td>
                    <td>${movie.duration}</td>
                    <td>${movie.ratings}</td>
                    <td>
                        <c:forEach items="${movieMap}" var="showTime">
                            <c:if test="${movie.movieId == showTime.key}">
                                <c:forEach items="${showTime.value}" var="show">
                                    <table class="table table-bordered table-sm table-dark">
                                        <tr>
                                            <td>Show Time Name:</td>
                                            <td>${show.showTimeName}</td>
                                        </tr>
                                        <tr>
                                            <td>Royal Seat:</td>
                                            <td>${show.royalSeatNumber}</td>
                                        </tr>
                                        <tr>
                                            <td>Royal Booked:</td>
                                            <td>${show.royalBooked}</td>
                                        </tr>
                                        <tr>
                                            <td>Premier Seat:</td>
                                            <td>${show.premierSeatNumber}</td>
                                        </tr>
                                        <tr>
                                            <td>Premier Booked:</td>
                                            <td>${show.premierBooked}</td>
                                        </tr>
                                    </table>
                                    <hr>
                                </c:forEach>
                            </c:if>
                        </c:forEach>
                    </td>
                    <td><a href="/movieDeletion1/${movie.movieId}" class="btn-link">Delete</a></td>
                 
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="/index" class="return-link">Return to Home</a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
