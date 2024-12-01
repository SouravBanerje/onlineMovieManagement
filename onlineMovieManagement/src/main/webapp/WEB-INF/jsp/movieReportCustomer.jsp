<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Report Page</title>
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
            max-width: 1200px;
        }
        h1 {
            color: #ffcc00;
            text-align: center;
            margin-bottom: 40px;
        }
        .movie-card {
            background-color: rgba(40, 40, 40, 0.8);
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
        }
        .movie-card h4 {
            color: #ffcc00;
            text-align: center;
            margin-bottom: 15px;
        }
        .movie-details {
            color: #ffffff;
            margin-bottom: 10px;
        }
        .btn-link {
            color: #ffcc00;
            text-decoration: none;
            display: block;
            text-align: center;
            margin-top: 15px;
        }
        .btn-link:hover {
            color: #e6b800;
        }
        .return-link {
            color: #ffcc00;
            text-decoration: none;
            text-align: center;
            display: block;
            margin-top: 30px;
        }
         
    </style>
</head>
<body>

<div class="report-container">
    <h1><u>Movie Report</u></h1>
    <div class="row">
        <c:forEach items="${movieList}" var="movie">
            <div class="col-md-4">
                <div class="movie-card">
                 <img src="${movie.imageLink}" alt="${movie.movieName}" class="img-fluid rounded mb-3">
                    <h4>${movie.movieName}</h4>
                    <p class="movie-details"><strong>Language:</strong> ${movie.language}</p>
                    <p class="movie-details"><strong>Genre:</strong> ${movie.genre}</p>
                    <p class="movie-details"><strong>Duration:</strong> ${movie.duration}</p>
                    <p class="movie-details"><strong>Rating:</strong> ${movie.ratings}</p>

                    <div>
                        <c:forEach items="${movieMap}" var="showTime">
                            <c:if test="${movie.movieId == showTime.key}">
                                <c:forEach items="${showTime.value}" var="show">
                                    <table class="table table-bordered table-sm table-dark">
                                        <tr>
                                            <td><strong>Show Time Name:</strong></td>
                                            <td>${show.showTimeName}</td>
                                        </tr>
                                        <tr>
                                            <td><strong>Royal Seat:</strong></td>
                                            <td>${show.royalSeatNumber}</td>
                                        </tr>
                                        <tr>
                                            <td><strong>Royal Booked:</strong></td>
                                            <td>${show.royalBooked}</td>
                                        </tr>
                                        <tr>
                                            <td><strong>Premier Seat:</strong></td>
                                            <td>${show.premierSeatNumber}</td>
                                        </tr>
                                        <tr>
                                            <td><strong>Premier Booked:</strong></td>
                                            <td>${show.premierBooked}</td>
                                        </tr>
                                    </table>
                                    <hr>
                                </c:forEach>
                            </c:if>
                        </c:forEach>
                    </div>

                   
                </div>
            </div>
        </c:forEach>
    </div>
    <a href="/index" class="return-link">Return to Home</a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
