<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Theatre</title>
</head>
<body>
    <h1>Update Theatre</h1>

    <!-- Form to update theatre details -->
    <form action="/updateTheatreDetails" method="post">
        <!-- Hidden field to carry the theatreId -->
        <input type="hidden" name="theatreId" value="${theatreRecord.theatreId}" />

        <p>
            <label for="theatreName">Theatre Name:</label>
            <!-- Populate with previously entered name -->
            <input type="text" id="theatreName" name="theatreName" value="${theatreRecord.name}" required />
        </p>

        <p>
            <label for="location">Location:</label>
            <!-- Populate with previously entered location -->
            <input type="text" id="location" name="location" value="${theatreRecord.location}" required />
        </p>

        <p>
            <label for="screens">Number of Screens:</label>
            <!-- Populate with previously entered number of screens -->
            <input type="number" id="screens" name="screens" value="${theatreRecord.screens}" required />
        </p>

        <h3>Screen Movie Shows</h3>
        <!-- Display the existing movie shows for each screen -->
        <c:forEach var="screenMovieShow" items="${screenMovieShows}">
            <div>
                <strong>Screen ID:</strong> ${screenMovieShow.screenId}<br />
                <strong>Movie Name:</strong> ${screenMovieShow.movieName}<br />
                <strong>Show Time:</strong> ${screenMovieShow.showTimeName}
            </div>
            <hr />
        </c:forEach>

        <!-- Submit button to update the theatre details -->
        <p>
            <input type="submit" value="Update Theatre" />
        </p>
    </form>
</body>
</html>
