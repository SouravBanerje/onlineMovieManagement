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
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Theatre Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("https://i.imgur.com/VQ4PiHd.jpg") no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        h1, h2 {
            text-align: center;
            margin: 20px 0;
        }

        p {
            font-size: 1.1em;
            margin: 10px 20px;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.9);
            color: #333;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 10px 15px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        button {
            padding: 6px 12px;
            margin: 5px;
            cursor: pointer;
            font-size: 0.9em;
            border: none;
            border-radius: 4px;
        }

        .update-btn {
            background-color: #4CAF50;
            color: white;
        }

        .delete-btn {
            background-color: #f44336;
            color: white;
        }

        .container {
            width: 95%;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        img {
            display: block;
            margin: 20px auto;
            max-width: 100%;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <h1>Theatre Movie Show Details</h1>
    <div class="container">
        <c:if test="${not empty theatreData}">
            <c:forEach var="theatreEntry" items="${theatreData}">
                <img src="${theatreEntry.value.imgUrl}" alt="Theatre Image">
                <h2>Theatre: ${theatreEntry.key}</h2>
                <p><strong>Location:</strong> ${theatreEntry.value.location}</p>
                <p><strong>Number of Screens:</strong> ${theatreEntry.value.screens}</p>

                <table>
                    <thead>
                        <tr>
                            <th>Screen Name</th>
                            <th>Movie Name</th>
                            <th>Show Time</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="dto" items="${theatreEntry.value.shows}">
                            <tr>
                                <td>${dto.screenName}</td>
                                <td>${dto.movieName}</td>
                                <td>${dto.showTimeName}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
              <%--  <p>
                <a href="/updateTheatre/${theatreEntry.value.theatreId}" class="update-btn">Update Theatre</a>
                <a href="/deleteTheatre/${theatreEntry.value.theatreId}" 
                   class="delete-btn" 
                   onclick="return confirm('Are you sure you want to delete this theatre?');">
                   Delete Theatre
                </a>
            </p> --%>
            </c:forEach>
        </c:if>

        <c:if test="${empty theatreData}">
            <p>No data available to display.</p>
        </c:if>
    </div>
</body>
</html>




 <%--  <p>
                <a href="/updateTheatre/${theatreEntry.value.theatreId}" class="update-btn">Update Theatre</a>
                <a href="/deleteTheatre/${theatreEntry.value.theatreId}" 
                   class="delete-btn" 
                   onclick="return confirm('Are you sure you want to delete this theatre?');">
                   Delete Theatre
                </a>
            </p> --%>
  
