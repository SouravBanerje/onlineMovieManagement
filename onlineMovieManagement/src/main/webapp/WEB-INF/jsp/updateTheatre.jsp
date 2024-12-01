<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Theatre</title>
    <style>
        /* Same styles as in the addTheatre.jsp */
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
        // Function to dynamically generate the table with existing data
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

                // Loop for 6 rows per screen (modify based on your need)
                for (var j = 1; j <= 6; j++) {
                    var tr = document.createElement('tr');

                    // Screen ID cell
                    var tdScreen = document.createElement('td');
                    var screenInput = document.createElement('input');
                    screenInput.setAttribute('type', 'text');
                    screenInput.setAttribute('name', 'screenId' + i);
                    screenInput.classList.add('form-control');
                    // Set the value to the existing data (use JSTL to populate values)
                    screenInput.value = '${theatre.screenData['screenId' + i]}'; 
                    tdScreen.appendChild(screenInput);

                    // Movie ID cell
                    var tdMovie = document.createElement('td');
                    var movieInput = document.createElement('input');
                    movieInput.setAttribute('type', 'text');
                    movieInput.setAttribute('name', 'movieId' + i + '_' + j);
                    movieInput.classList.add('form-control');
                    // Set the value to the existing data (use JSTL to populate values)
                    movieInput.value = '${theatre.screenData['movieId' + i + '_' + j]}';
                    tdMovie.appendChild(movieInput);

                    // Showtime ID cell
                    var tdShowtime = document.createElement('td');
                    var showtimeInput = document.createElement('input');
                    showtimeInput.setAttribute('type', 'text');
                    showtimeInput.setAttribute('name', 'showTimeId' + i + '_' + j);
                    showtimeInput.classList.add('form-control');
                    // Set the value to the existing data (use JSTL to populate values)
                    showtimeInput.value = '${theatre.screenData['showTimeId' + i + '_' + j]}';
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
    <h2>Update Theatre</h2>
    <div class="container">
        <form action="/theatre/updateTheatre" method="post">
            <div class="form-group">
                <label for="theatreId">Theatre ID:</label>
                <input type="text" id="theatreId" name="theatreId" value="${theatre.theatreId}" readonly />
            </div>

            <div class="form-group">
                <label for="name">Theatre Name:</label>
                <input type="text" id="name" name="name" value="${theatre.name}" required />
            </div>

            <div class="form-group">
                <label for="location">Theatre Location:</label>
                <input type="text" id="location" name="location" value="${theatre.location}" required />
            </div>

            <div class="form-group">
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
                    <!-- Rows will be added here dynamically based on the number of screens -->
                </tbody>
            </table>

            <button type="submit">Update Theatre</button>
        </form>
    </div>

    <script>
        // Generate the table on page load with the existing data
        window.onload = function() {
            generateTable();
        }
    </script>
</body>
</html>
