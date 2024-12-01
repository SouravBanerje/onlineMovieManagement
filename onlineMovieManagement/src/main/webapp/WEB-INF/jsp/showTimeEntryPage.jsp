<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Time Entry Page</title>
<style>
    body {
      /*   font-family: Arial, sans-serif;
        background-image: url('https://i.imgur.com/14ENDg6.jpg ');
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        color: #333; */
        
        font-family: Arial, sans-serif;
        background-image: url('https://i.imgur.com/14ENDg6.jpg'); /* Replace with your image URL */
        background-size: cover;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0;
        padding: 0;
    }
    .container {
        background: rgba(255, 255, 255, 0.8);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
        width: 350px;
        text-align: center;
    }
    h1 {
        color: #4CAF50;
        margin-bottom: 10px;
    }
    h2 {
        font-size: 16px;
        color: #333;
        margin-bottom: 20px;
    }
    form input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    button {
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
        margin: 10px 5px;
    }
    button[type="submit"] {
        background-color: #4CAF50;
    }
    button[type="reset"] {
        background-color: #f44336;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Show Time Entry</h1>
        <form:form action="/addShowTime" method="post" modelAttribute="ShowTimeRecord">
            <form:hidden path="showTimeId"/>
            <form:hidden path="showTimeRoyalPrice"/>
            <h2>Enter Show Time Details Below:</h2>
            <label>Show Time Name:</label>
            <form:input path="showTimeName"/>
            
            <label>Premier Price:</label>
            <form:input path="showTimePremierPrice"/>
            
            <div>
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>
        </form:form>
    </div>
</body>
</html>

