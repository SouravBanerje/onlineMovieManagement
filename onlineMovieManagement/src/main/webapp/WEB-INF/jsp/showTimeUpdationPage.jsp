<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Show Time</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://i.imgur.com/14ENDg6.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin: 50px auto;
            text-align: center;
        }
        h1 {
            font-size: 28px;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            text-align: left;
            margin-bottom: 8px;
        }
        input[type="text"], input[type="number"], input[type="submit"] {
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 100%;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .back-link {
            text-decoration: none;
            color: #007bff;
            font-size: 16px;
            margin-top: 20px;
        }
        .back-link:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Update Show Time</h1>
    
    <form:form action="/showTimeUpdation/${showTime.showTimeId}" method="post" modelAttribute="showTime">
        <input type="hidden" name="showTimeId" value="${showTime.showTimeId}"/>
        
        <label for="showTimeName">Show Time Name:</label>
        <form:input path="showTimeName" id="showTimeName" value="${showTime.showTimeName}" required="true"/>
        
        <label for="showTimeRoyalPrice">Royal Price:</label>
        <form:input path="showTimeRoyalPrice" id="showTimeRoyalPrice" value="${showTime.showTimeRoyalPrice}" type="number" step="0.01" required="true"/>
        
        <label for="showTimePremierPrice">Premier Price:</label>
        <form:input path="showTimePremierPrice" id="showTimePremierPrice" value="${showTime.showTimePremierPrice}" type="number" step="0.01" required="true"/>
        
        <input type="submit" value="Update Show Time"/>
    </form:form>
    
    <a href="/showTimeReport" class="back-link">Back to Show Time Report</a>
</div>

</body>
</html>
