<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies by Language</title>
    <style>

        body {
            background-image: url('https://i.imgur.com/yQ7jnIq.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: #ffffff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        
        .report-container {
            background-color: rgba(30, 30, 30, 0.95);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.7);
            width: 90%;
            max-width: 900px;
            margin: 40px auto;
            color: #ffffff;
            animation: fadeIn 1s ease;
        }

       
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        h1, h2 {
            color: #ffcc00;
            text-align: center;
            margin-bottom: 20px;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.5);
        }
        
        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: rgba(255, 255, 255, 0.08);
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
            border: 1px solid #444;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #666;
            color: #ffffff;
            font-size: 0.9em;
        }

        table th {
            background-color: rgba(255, 255, 255, 0.2);
            font-weight: bold;
            color: #ffcc00;
            text-transform: uppercase;
            font-size: 1em;
        }

        table tr:hover {
            background-color: rgba(255, 255, 255, 0.15);
        }

        /* Button and link styles */
        .btn-link, .return-link {
            color: #ffcc00;
            text-decoration: none;
            font-weight: bold;
            display: inline-block;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s, color 0.3s;
        }

        .btn-link:hover, .return-link:hover {
            background-color: #ffcc00;
            color: #333333;
        }

        .return-link {
            text-align: center;
            display: block;
            margin-top: 30px;
        }

        /* Movie show details styling */
        .movie-show-details {
            margin-top: 10px;
            padding: 15px;
            background-color: rgba(255, 255, 255, 0.15);
            border-radius: 6px;
            box-shadow: inset 0 2px 6px rgba(0, 0, 0, 0.3);
            font-family: 'Verdana', sans-serif;
            font-size: 0.95em;
            line-height: 1.5;
        }

        .movie-show-details h5 {
            color: #ffcc00;
            margin: 0 0 5px;
            font-size: 1.1em;
            font-weight: bold;
            text-transform: uppercase;
        }

        .movie-show-details p {
            margin: 2px 0;
            font-size: 0.9em;
            color: #dcdcdc;
        }

        hr {
            border: none;
            height: 1px;
            background-color: rgba(255, 255, 255, 0.3);
            margin: 10px 0;
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
    </style>
</head>
<body>

<div class="report-container">
    <h2>Movies in Language: ${language}</h2>

    <!-- Show error message if no movies found -->
    <c:if test="${not empty error}">
        <div>${error}</div>
    </c:if>

    <!-- Table to display movie details -->
    <table>
        <thead>
            <tr>
            	 <th>Image</th>
                <th>Movie Name</th>
                <th>Language</th>
                <th>Genre</th>
                <th>Duration</th>
                <th>Ratings</th>
                <th>Show Times</th>
                <th>Book</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="movie" items="${movieList}">
                <tr>
                	<td>
                <img src="${movie.imageLink}" alt="${movie.movieName}" style="width: 100px; height: auto; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);">
            </td>
                    <td>${movie.movieName}</td>
                    <td>${movie.language}</td>
                    <td>${movie.genre}</td>
                    <td>${movie.duration}</td>
                    <td>${movie.ratings}</td>
                    <td>
                        <c:if test="${not empty movieMap[movie.movieId]}">
                            <c:forEach var="movieShow" items="${movieMap[movie.movieId]}">
                                <div class="movie-show-details">
                                    <h5>Show Time: ${movieShow.showTimeName}</h5>
                                    <p>Royal Seat: ${movieShow.royalSeatNumber}</p>
                                    <p>Royal Booked: ${movieShow.royalBooked}</p>
                                    <p>Premier Seat: ${movieShow.premierSeatNumber}</p>
                                    <p>Premier Booked: ${movieShow.premierBooked}</p>
                                </div>
                                <hr>
                            </c:forEach>
                        </c:if>
                    </td>
                    <td><a href="/bookMovie/${movie.movieId }" class="btn-link">Book Movie</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="/index" class="return-link">Back to Home</a>
</div>

</body>
</html>
