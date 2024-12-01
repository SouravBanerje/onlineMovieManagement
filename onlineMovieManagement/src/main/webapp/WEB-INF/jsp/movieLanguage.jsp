<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find Movies By Language</title>

    <!-- Include JavaScript to capitalize first letter -->
    <script>
        // Function to capitalize the first letter of the selected language
        function capitalizeFirstLetter() {
            var language = document.getElementById('language').value;
            if (language) {
                document.getElementById('language').value = language.charAt(0).toUpperCase() + language.slice(1);
            }
        }

        // Function to capitalize the first letter of the text entered in the search box
        function capitalizeSearchBox() {
            var searchBox = document.getElementById('searchBox');
            var value = searchBox.value;
            if (value) {
                searchBox.value = value.charAt(0).toUpperCase() + value.slice(1);
            }
        }
    </script>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url("https://i.imgur.com/yQ7jnIq.jpg"); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: white;
            margin: 0;
            padding: 20px;
            background-attachment: fixed;
        }

        h1, h2 {
            text-align: center;
            font-family: "Monotype Corsiva", cursive;
            color: white;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.5);
        }

        label {
            font-size: 18px;
            margin-bottom: 10px;
            color: white;
        }

        select {
            padding: 10px;
            font-size: 16px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 250px;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }

        /* Adjustments for the search box container */
        .search-box-container {
            margin-top: 40px;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.5);
            width: 320px;  /* Limit the width */
            margin-left: auto;
            margin-right: auto;
        }

        .search-box-container input {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            margin-bottom: 12px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .search-box-container button {
            width: auto;
            padding: 8px 16px;
            font-size: 14px;
            color: white;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .search-box-container button:hover {
            background-color: #0056b3;
        }

        /* Responsive Design */
        @media screen and (max-width: 600px) {
            h1, h2 {
                font-size: 24px;
            }

            form, .search-box-container {
                width: 100%;
                padding: 15px;
            }

            select, input[type="text"] {
                width: 100%;
            }

            button {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <h1>Select a Language to Find Movies</h1>

    <!-- Form for selecting a language -->
    <form method="get" action="/movieLanguageResults">
        <label for="language">Choose a language:</label>
        <select id="language" name="language" onchange="capitalizeFirstLetter()">
            <option value="English">English</option>
            <option value="Hindi">Hindi</option>
            <option value="Tamil">Tamil</option>
            <option value="French">French</option>
            <option value="French">Bengali</option>
            <!-- Add more languages as needed -->
        </select>
        <button type="submit">Search</button>
    </form>

    <!-- Additional Search Box (Optional) -->
    <div class="search-box-container">
        <h2>Search by Language Name</h2>
        <form method="get" action="/movieLanguageResults">
            <label for="searchBox">Search Language:</label>
            <input type="text" id="searchBox" name="language" oninput="capitalizeSearchBox()">
            <button type="submit">Search</button>
        </form>
    </div>

</body>
</html>
