<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Theatre</title>
    <script>
        function generateScreens() {
            var screens = document.getElementById("screens").value;
            var screenDiv = document.getElementById("dynamicScreens");
            screenDiv.innerHTML = ''; // Clear previous screen divs

            if (screens > 0) {
                for (var i = 1; i <= screens; i++) {
                    var screenHTML = `
                        <div class="card mb-4">
                            <div class="card-header">
                                <h5>Screen ${i}</h5>
                            </div>
                            <div class="card-body">
                                <div class="mb-3">
                                    <label class="form-label">Screen ID</label>
                                    <select name="screenId${i}" class="form-control" required>
                                        <option value="">Select Screen</option>
                                        <c:forEach items="${screenList}" var="screenId">
                                            <option value="${screenId}">${screenId}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Show</th>
                                                <th>Movie ID</th>
                                                <th>Show Time ID</th>
                                            </tr>
                                        </thead>
                                        <tbody>`;
                    for (var j = 1; j <= 6; j++) {
                        screenHTML += `
                                                <tr>
                                                    <td>Show ${j}</td>
                                                    <td><input type="text" name="movieId${i}_${j}" class="form-control" placeholder="Movie ID"  /></td>
                                                    <td><input type="text" name="showTimeId${i}_${j}" class="form-control" placeholder="Show Time ID"  /></td>
                                                </tr>`;
                    }
                    screenHTML += `
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>`;
                    screenDiv.innerHTML += screenHTML;
                }
            }
        }
    </script>
</head>
<body>
    <h2>Add Theatre</h2>
    <form action="/theatre/addTheatre" method="post">
        <div>
            <label for="theatreId">Theatre ID:</label>
            <input type="text" id="theatreId" name="theatreId" value="${theatre.theatreId}" readonly />
        </div>
        
        <div>
            <label for="name">Theatre Name:</label>
            <input type="text" id="name" name="name" value="${theatre.name}" required />
        </div>
        
        <div>
            <label for="location">Theatre Location:</label>
            <input type="text" id="location" name="location" value="${theatre.location}" required />
        </div>

        <div>
            <label for="screens">Number of Screens:</label>
            <input type="number" id="screens" name="screens" value="${theatre.screens}" min="1" required />
        </div>

        <!-- Debugging: Print number of screens to check -->
        <p>Number of Screens: ${theatre.screens}</p>

        <!-- Dynamic Screen and Movie Showtimes -->
        <div id="dynamicScreens"></div>

        <!-- Button to generate dynamic screens -->
        <button type="button" onclick="generateScreens()">Generate Screens and Showtimes</button>

        <!-- Submit button for adding the theatre -->
        <button type="submit">Add Theatre</button>
    </form>
</body>
</html>
 --%>
 
 
 
 
 
 
 
 <%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Theatre</title>

</head>
<body>
    <h2>Add Theatre</h2>
    <form action="/theatre/addTheatre" method="post">
        <div>
            <label for="theatreId">Theatre ID:</label>
            <input type="text" id="theatreId" name="theatreId" value="${theatre.theatreId}"  />
        </div>
        
        <div>
            <label for="name">Theatre Name:</label>
            <input type="text" id="name" name="name" value="${theatre.name}" required />
        </div>
        
        <div>
            <label for="location">Theatre Location:</label>
            <input type="text" id="location" name="location" value="${theatre.location}" required />
        </div>

        <div>
            <label for="screens">Number of Screens:</label>
            <input type="number" id="screens" name="screens" value="${theatre.screens}" min="1" required />
        </div>

      
    <table>
        <tr>
            <th>Screen ID</th>
            <th>Movie ID</th>
            <th>Showtime ID</th>
        </tr>
        <c:forEach var="index" begin="1" end="6">
            <tr>
                <td>
                    <input list="screenId" name="screenId${index}" class="form-control"/>
                    <datalist id="screenId">
                        <c:forEach items="${screenList }" var="screenId">
                            <option value="${screenId}"></option>
                        </c:forEach>
                    </datalist>
                </td>
                <td><input type="text" name="movieId${index}"  class="form-control"/></td>
                <td><input type="text" name="showTimeId${index}" class="form-control"/></td>
            </tr>
        </c:forEach>
    </table>

        <!-- Submit button for adding the theatre -->
        <button type="submit">Add Theatre</button>
    </form>
</body>
</html> --%>







<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Theatre</title>
    <script>
        // Function to dynamically generate the table based on the number of screens
        function generateTable() {
            var numScreens = document.getElementById('screens').value; // Get the number of screens
            var tableBody = document.getElementById('screenTableBody'); // The table body element where rows will be added
            tableBody.innerHTML = ''; // Clear existing rows

            // Loop to create table rows based on the number of screens
            for (var i = 1; i <= numScreens; i++) {
                var row = document.createElement('tr');

                // Screen ID
                var cell1 = document.createElement('td');
                var input1 = document.createElement('input');
                input1.setAttribute('list', 'screenId');
                input1.setAttribute('name', 'screenId' + i);
                input1.classList.add('form-control');
                cell1.appendChild(input1);

                // Movie ID
                var cell2 = document.createElement('td');
                var input2 = document.createElement('input');
                input2.setAttribute('type', 'text');
                input2.setAttribute('name', 'movieId' + i);
                input2.classList.add('form-control');
                cell2.appendChild(input2);

                // Showtime ID
                var cell3 = document.createElement('td');
                var input3 = document.createElement('input');
                input3.setAttribute('type', 'text');
                input3.setAttribute('name', 'showTimeId' + i);
                input3.classList.add('form-control');
                cell3.appendChild(input3);

                // Append the cells to the row
                row.appendChild(cell1);
                row.appendChild(cell2);
                row.appendChild(cell3);

                // Append the row to the table body
                tableBody.appendChild(row);
            }
        }
    </script>
</head>
<body>
    <h2>Add Theatre</h2>
    <form action="/theatre/addTheatre" method="post">
        <div>
            <label for="theatreId">Theatre ID:</label>
            <input type="text" id="theatreId" name="theatreId" value="${theatre.theatreId}"  />
        </div>
        
        <div>
            <label for="name">Theatre Name:</label>
            <input type="text" id="name" name="name" value="${theatre.name}" required />
        </div>
        
        <div>
            <label for="location">Theatre Location:</label>
            <input type="text" id="location" name="location" value="${theatre.location}" required />
        </div>

        <div>
            <label for="screens">Number of Screens:</label>
            <input type="number" id="screens" name="screens" value="${theatre.screens}" min="1" required oninput="generateTable()" />
        </div>

        <table>
            <thead>
                <tr>
                    <th>Screen ID</th>
                    <th>Movie ID</th>
                    <th>Showtime ID</th>
                </tr>
            </thead>
            <tbody id="screenTableBody">
                <!-- Rows will be added here dynamically -->
            </tbody>
        </table>

        <button type="submit">Add Theatre</button>
    </form>
</body>
</html> --%>




<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Theatre</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 30px;
        }

        .container {
            width: 80%;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 1.1em;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"], input[type="number"] {
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="text"]:focus, input[type="number"]:focus {
            border-color: #007BFF;
            outline: none;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            padding: 12px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1.1em;
            cursor: pointer;
            align-self: center;
            margin-top: 20px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .form-group input {
            width: 100%;
        }
    </style>
    <script>
        // Function to dynamically generate the table
        function generateTable() {
            var numScreens = document.getElementById('screens').value; // Number of screens entered
            var tableBody = document.getElementById('screenTableBody'); // Reference to table body
            tableBody.innerHTML = ''; // Clear existing rows

            // Loop for each screen
            for (var i = 1; i <= numScreens; i++) {
                // Loop for 6 rows per screen
                for (var j = 1; j <= 6; j++) {
                    var tr = document.createElement('tr');

                    // Screen ID cell
                    var tdScreen = document.createElement('td');
                    var screenInput = document.createElement('input');
                    screenInput.setAttribute('type', 'text');
                    screenInput.setAttribute('name', 'screenId' + i);
                    screenInput.classList.add('form-control');
                    tdScreen.appendChild(screenInput);

                    // Movie ID cell
                    var tdMovie = document.createElement('td');
                    var movieInput = document.createElement('input');
                    movieInput.setAttribute('type', 'text');
                    movieInput.setAttribute('name', 'movieId' + j);
                    movieInput.classList.add('form-control');
                    tdMovie.appendChild(movieInput);

                    // Showtime ID cell
                    var tdShowtime = document.createElement('td');
                    var showtimeInput = document.createElement('input');
                    showtimeInput.setAttribute('type', 'text');
                    showtimeInput.setAttribute('name', 'showTimeId' + j);
                    showtimeInput.classList.add('form-control');
                    tdShowtime.appendChild(showtimeInput);

                    // Append cells to row
                    tr.appendChild(tdScreen);
                    tr.appendChild(tdMovie);
                    tr.appendChild(tdShowtime);

                    // Append row to table body
                    tableBody.appendChild(tr);
                }
            }
        }
    </script>
</head>
<body>
    <h2>Add Theatre</h2>
    <div class="container">
        <form action="/theatre/addTheatre" method="post">
            <div class="form-group">
                <label for="theatreId">Theatre ID:</label>
                <input type="text" id="theatreId" name="theatreId" />
            </div>

            <div class="form-group">
                <label for="name">Theatre Name:</label>
                <input type="text" id="name" name="name" required />
            </div>

            <div class="form-group">
                <label for="location">Theatre Location:</label>
                <input type="text" id="location" name="location" required />
            </div>

            <div class="form-group">
                <label for="screens">Number of Screens:</label>
                <input type="number" id="screens" name="screens" min="1" required oninput="generateTable()" />
            </div>

            <table>
                <thead>
                    <tr>
                        <th>Screen ID</th>
                        <th>Movie ID</th>
                        <th>Showtime ID</th>
                    </tr>
                </thead>
                <tbody id="screenTableBody">
                    <!-- Rows will be added here dynamically -->
                </tbody>
            </table>

            <button type="submit">Add Theatre</button>
        </form>
    </div>
</body>
</html>
 --%>


<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Theatre</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 30px;
        }

        .container {
            width: 80%;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 1.1em;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"], input[type="number"] {
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="text"]:focus, input[type="number"]:focus {
            border-color: #007BFF;
            outline: none;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            padding: 12px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1.1em;
            cursor: pointer;
            align-self: center;
            margin-top: 20px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .form-group input {
            width: 100%;
        }
    </style>
    <script>
        // Function to dynamically generate the table
        function generateTable() {
            var numScreens = document.getElementById('screens').value; // Number of screens entered
            var tableBody = document.getElementById('screenTableBody'); // Reference to table body
            tableBody.innerHTML = ''; // Clear existing rows

            // Loop for each screen
            for (var i = 1; i <= numScreens; i++) {
                // Create a header row for each screen
                var trHeader = document.createElement('tr');
                var tdHeader = document.createElement('td');
                tdHeader.setAttribute('colspan', '3');
                tdHeader.innerHTML = '<strong>Screen ' + i + '</strong>';
                trHeader.appendChild(tdHeader);
                tableBody.appendChild(trHeader);

                // Loop for 6 rows per screen
                for (var j = 1; j <= 6; j++) {
                    var tr = document.createElement('tr');

                    // Screen ID cell
                    var tdScreen = document.createElement('td');
                    var screenInput = document.createElement('input');
                    screenInput.setAttribute('type', 'text');
                    screenInput.setAttribute('name', 'screenId' + i );
                    screenInput.classList.add('form-control');
                    tdScreen.appendChild(screenInput);

                    // Movie ID cell
                    var tdMovie = document.createElement('td');
                    var movieInput = document.createElement('input');
                    movieInput.setAttribute('type', 'text');
                    movieInput.setAttribute('name', 'movieId' + i + '_' + j);
                    movieInput.classList.add('form-control');
                    tdMovie.appendChild(movieInput);

                    // Showtime ID cell
                    var tdShowtime = document.createElement('td');
                    var showtimeInput = document.createElement('input');
                    showtimeInput.setAttribute('type', 'text');
                    showtimeInput.setAttribute('name', 'showTimeId' + i + '_' + j);
                    showtimeInput.classList.add('form-control');
                    tdShowtime.appendChild(showtimeInput);

                    // Append cells to row
                    tr.appendChild(tdScreen);
                    tr.appendChild(tdMovie);
                    tr.appendChild(tdShowtime);

                    // Append row to table body
                    tableBody.appendChild(tr);
                }
            }
        }
    </script>
</head>
<body>
    <h2>Add Theatre</h2>
    <div class="container">
        <form action="/addTheatre" method="post">
            <div class="form-group">
                <label for="theatreId">Theatre ID:</label>
                <input type="text" id="theatreId" name="theatreId" />
            </div>

            <div class="form-group">
                <label for="name">Theatre Name:</label>
                <input type="text" id="name" name="name" required />
            </div>
             <div class="form-group">
            <label for="imgUrl">Upload Movie URL</label>
            <input name="imgUrl" id="imgUrl" type="text"/>
        	</div>

            <div class="form-group">
                <label for="location">Theatre Location:</label>
                <input type="text" id="location" name="location" required />
            </div>

            <div class="form-group">
                <label for="screens">Number of Screens:</label>
                <input type="number" id="screens" name="screens" min="1" required oninput="generateTable()" />
            </div>

            <table>
                <thead>
                    <tr>
                        <th>Screen ID</th>
                        <th>Movie ID</th>
                        <th>Showtime ID</th>
                    </tr>
                </thead>
                <tbody id="screenTableBody">
                    <!-- Rows will be added here dynamically -->
                </tbody>
            </table>

            <button type="submit">Add Theatre</button>
        </form>
    </div>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Theatre</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url("https://i.imgur.com/VQ4PiHd.jpg"); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #fff;
            margin-top: 30px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
        }

        .container {
            width: 80%;
            max-width: 900px;
            margin: 40px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        label {
            font-size: 1.1em;
            color: #555;
        }

        input[type="text"], input[type="number"] {
            padding: 12px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 6px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="text"]:focus, input[type="number"]:focus {
            border-color: #007BFF;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #007BFF;
            color: white;
            text-align: center;
        }

        table td {
            background-color: #f9f9f9;
            text-align: center;
        }

        button {
            padding: 12px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
            align-self: center;
        }

        button:hover {
            background-color: #218838;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 95%;
                padding: 15px;
            }

            table th, table td {
                font-size: 0.9em;
            }

            button {
                width: 100%;
            }
        }
    </style>
    <script>
        function generateTable() {
            var numScreens = document.getElementById('screens').value;
            var tableBody = document.getElementById('screenTableBody');
            tableBody.innerHTML = '';

            for (var i = 1; i <= numScreens; i++) {
                var trHeader = document.createElement('tr');
                var tdHeader = document.createElement('td');
                tdHeader.setAttribute('colspan', '3');
                tdHeader.innerHTML = '<strong>Screen ' + i + '</strong>';
                tdHeader.style.textAlign = 'center';
                tdHeader.style.backgroundColor = '#f2f2f2';
                trHeader.appendChild(tdHeader);
                tableBody.appendChild(trHeader);

                for (var j = 1; j <= 6; j++) {
                    var tr = document.createElement('tr');

                    var tdScreen = document.createElement('td');
                    var screenInput = document.createElement('input');
                    screenInput.setAttribute('type', 'text');
                    screenInput.setAttribute('name', 'screenId' + i);
                    screenInput.classList.add('form-control');
                    tdScreen.appendChild(screenInput);

                    var tdMovie = document.createElement('td');
                    var movieInput = document.createElement('input');
                    movieInput.setAttribute('type', 'text');
                    movieInput.setAttribute('name', 'movieId' + i + '_' + j);
                    movieInput.classList.add('form-control');
                    tdMovie.appendChild(movieInput);

                    var tdShowtime = document.createElement('td');
                    var showtimeInput = document.createElement('input');
                    showtimeInput.setAttribute('type', 'text');
                    showtimeInput.setAttribute('name', 'showTimeId' + i + '_' + j);
                    showtimeInput.classList.add('form-control');
                    tdShowtime.appendChild(showtimeInput);

                    tr.appendChild(tdScreen);
                    tr.appendChild(tdMovie);
                    tr.appendChild(tdShowtime);
                    tableBody.appendChild(tr);
                }
            }
        }
    </script>
</head>
<body>
    <h2>Add Theatre</h2>
    <div class="container">
        <form action="/addTheatre" method="post">
            <div class="form-group">
                <label for="theatreId">Theatre ID:</label>
                <input type="text" id="theatreId" name="theatreId" />
            </div>

            <div class="form-group">
                <label for="name">Theatre Name:</label>
                <input type="text" id="name" name="name" required />
            </div>

            <div class="form-group">
                <label for="imgUrl">Upload Movie URL:</label>
                <input name="imgUrl" id="imgUrl" type="text" />
            </div>

            <div class="form-group">
                <label for="location">Theatre Location:</label>
                <input type="text" id="location" name="location" required />
            </div>

            <div class="form-group">
                <label for="screens">Number of Screens:</label>
                <input type="number" id="screens" name="screens" min="1" required oninput="generateTable()" />
            </div>

            <table>
                <thead>
                    <tr>
                        <th>Screen ID</th>
                        <th>Movie ID</th>
                        <th>Showtime ID</th>
                    </tr>
                </thead>
                <tbody id="screenTableBody">
                    <!-- Rows will be added dynamically -->
                </tbody>
            </table>

            <button type="submit">Add Theatre</button>
        </form>
    </div>
</body>
</html>


