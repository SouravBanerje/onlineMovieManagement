<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Entry Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://i.imgur.com/yQ7jnIq.jpg'); /* Replace with your dark background image */
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: #ffffff; /* Light text color for dark background */
        }
        .movie-container {
            background-color: rgba(30, 30, 30, 0.9); /* Darker semi-transparent background */
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            margin: 40px auto;
            max-width: 600px;
        }
        h2 {
            color: #ffcc00; /* Bright accent color for headings */
            text-align: center;
            margin-bottom: 20px;
        }
        .form-label {
            font-weight: bold;
            color: #ffcc00; /* Bright accent color for labels */
        }
        .form-control {
            background-color: #444; /* Dark background for inputs */
            border: 1px solid #ffcc00; /* Border color matching the accent */
            color: #ffffff; /* Light text color */
        }
        .form-control:focus {
            background-color: #555; /* Darker focus background */
            border-color: #ffcc00; /* Bright border on focus */
            color: #ffffff; /* Light text color */
        }
        .btn-primary {
            background-color: #ffcc00; /* Bright primary button */
            border-color: #ffcc00; /* Matching border */
            width: 100%;
        }
        .btn-primary:hover {
            background-color: #e6b800; /* Darker shade on hover */
        }
        .btn-secondary {
            background-color: #555; /* Dark secondary button */
            border-color: #666; /* Slightly lighter border */
            color: #ffffff; /* Light text color */
            width: 100%;
        }
        .d-grid {
            margin-top: 20px;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.1); /* Semi-transparent background for the table */
        }
        table th, table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #666; /* Light border for the table */
            color: #ffffff; /* Light text color */
        }
        table th {
            background-color: rgba(255, 255, 255, 0.2); /* Slightly brighter background for headers */
        }
    </style>
</head>
<body>

<div class="movie-container">
    <h2>Movie Entry Page</h2>
    <form:form id="movieForm" action="/movieUpdate/${movieRecord.movieId}" method="post" modelAttribute="movieRecord" class="mt-4">

        <div class="mb-3">
            <label class="form-label">Enter Movie Id</label>
            <form:input path="movieId" id="movieId" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Movie Name</label>
            <form:input id="movieName" path="movieName" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Movie Language</label>
            <form:input path="language" id="language" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Genre</label>
            <form:input path="genre" id="genre" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Duration</label>
            <form:input path="duration" id="duration" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Ratings</label>
            <form:input id="ratings" path="ratings" class="form-control" />
        </div>

  

<div align="center">
    <h2>ShowTime Entry</h2>
    <table>
        <tr>
            <th>Show Time</th>
            <th>Premier Seats</th>
            <th>Royal Seats</th>
        </tr>
        <c:forEach var="index" begin="1" end="6">
            <tr>
                <td>
                    <input list="shows" name="show${index}" class="form-control"/>
                    <datalist id="shows">
                        <c:forEach items="${showTimeList }" var="sid">
                            <option value="${sid}"></option>
                        </c:forEach>
                    </datalist>
                </td>
                <td><input type="text" name="premier${index}" value="---" class="form-control"/></td>
                <td><input type="text" name="royal${index}" value="---" class="form-control"/></td>
            </tr>
        </c:forEach>
    </table>
          <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Submit</button>
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
    <title>Movie Entry Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://i.imgur.com/yQ7jnIq.jpg'); /* Replace with your dark background image */
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: #ffffff; /* Light text color for dark background */
        }
        .movie-container {
            background-color: rgba(30, 30, 30, 0.9); /* Darker semi-transparent background */
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            margin: 40px auto;
            max-width: 600px;
        }
        h2 {
            color: #ffcc00; /* Bright accent color for headings */
            text-align: center;
            margin-bottom: 20px;
        }
        .form-label {
            font-weight: bold;
            color: #ffcc00; /* Bright accent color for labels */
        }
        .form-control {
            background-color: #444; /* Dark background for inputs */
            border: 1px solid #ffcc00; /* Border color matching the accent */
            color: #ffffff; /* Light text color */
        }
        .form-control:focus {
            background-color: #555; /* Darker focus background */
            border-color: #ffcc00; /* Bright border on focus */
            color: #ffffff; /* Light text color */
        }
        .btn-primary {
            background-color: #ffcc00; /* Bright primary button */
            border-color: #ffcc00; /* Matching border */
            width: 100%;
        }
        .btn-primary:hover {
            background-color: #e6b800; /* Darker shade on hover */
        }
        .btn-secondary {
            background-color: #555; /* Dark secondary button */
            border-color: #666; /* Slightly lighter border */
            color: #ffffff; /* Light text color */
            width: 100%;
        }
        .d-grid {
            margin-top: 20px;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.1); /* Semi-transparent background for the table */
        }
        table th, table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #666; /* Light border for the table */
            color: #ffffff; /* Light text color */
        }
        table th {
            background-color: rgba(255, 255, 255, 0.2); /* Slightly brighter background for headers */
        }
    </style>
</head>
<body>

<div class="movie-container">
    <h2>Movie Entry Page</h2>
    <form:form id="movieForm" action="/movieUpdate1/${movieRecord.movieId}" method="post" modelAttribute="movieRecord" class="mt-4">

        <div class="mb-3">
            <label class="form-label">Enter Movie Id</label>
            <form:input path="movieId" id="movieId" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Movie Name</label>
            <form:input id="movieName" path="movieName" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Movie Language</label>
            <form:input path="language" id="language" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Genre</label>
            <form:input path="genre" id="genre" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Duration</label>
            <form:input path="duration" id="duration" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Ratings</label>
            <form:input id="ratings" path="ratings" class="form-control" />
        </div>

  

<div align="center">
    <h2>ShowTime Entry</h2>
    <table>
        <tr>
            <th>Show Time</th>
            <th>Premier Seats</th>
            <th>Royal Seats</th>
        </tr>
        <c:forEach var="index" begin="1" end="6">
    <tr>
        <td>
            <input list="shows" name="show${index}" class="form-control"
                   value="${movieShows[index-1].showTimeId}" /> <!-- Pre-populate showtime -->
            <datalist id="shows">
                <c:forEach items="${showTimeList}" var="sid">
                    <option value="${sid}"></option>
                </c:forEach>
            </datalist>
        </td>
        <td>
            <input type="text" name="premier${index}" class="form-control"
                   value="${movieShows[index-1].premierSeatNumber}" /> <!-- Pre-populate premier seat -->
        </td>
        <td>
            <input type="text" name="royal${index}" class="form-control"
                   value="${movieShows[index-1].royalSeatNumber}" /> <!-- Pre-populate royal seat -->
        </td>
    </tr>
</c:forEach>

    </table>
          <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </div>

    </form:form>
</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>


 