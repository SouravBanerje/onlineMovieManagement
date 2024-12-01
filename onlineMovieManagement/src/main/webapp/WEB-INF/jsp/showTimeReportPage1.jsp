<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Time Report</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://i.imgur.com/14ENDg6.jpg'); /* Replace with your image URL */
        background-size: cover;
        background-position: center;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 800px;
        margin: 50px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background for readability */
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        font-size: 28px;
        color: #333;
        margin-bottom: 10px;
    }
    h2 {
        font-size: 18px;
        color: #555;
        margin-bottom: 20px;
    }
    h3 a {
        text-decoration: none;
        color: #007bff;
    }
    h3 a:hover {
        color: #0056b3;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: #fff;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 12px;
        text-align: center;
        color: #333;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    tr:hover {
        background-color: #e9f5ff;
    }
    .action-link {
        text-decoration: none;
        padding: 8px 12px;
        border-radius: 4px;
        font-size: 14px;
        color: #fff;
        transition: background-color 0.3s ease;
    }
    .delete-link {
        background-color: #dc3545;
    }
    .update-link {
        background-color: #28a745;
    }
    .delete-link:hover {
        background-color: #c82333;
    }
    .update-link:hover {
        background-color: #218838;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Show Time Report</h1>
    <h2>List of all Show Times</h2>
    
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Royal Price</th>
            <th>Premier Price</th>
           <!--  <th>ShowTime Deletion</th>
            <th>ShowTime Updation</th> -->
        </tr>
        
        <c:forEach items="${showTimeList}" var="showtime">
            <tr>
                <td>${showtime.showTimeId}</td>
                <td>${showtime.showTimeName}</td>
                <td>${showtime.showTimeRoyalPrice}</td>
                <td>${showtime.showTimePremierPrice}</td>
                <%-- <td><a href="/showTimeDeletion/${showtime.showTimeId}" class="action-link delete-link">Delete</a></td>
                <td><a href="/showTimeUpdation/${showtime.showTimeId}" class="action-link update-link">Update</a></td> --%>
            </tr>
        </c:forEach>
        
    </table>
    <h3><a href="/index">Return</a></h3>
</div>

</body>
</html>