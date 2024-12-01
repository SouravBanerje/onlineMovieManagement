<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cancellation Successful</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(to bottom right, #43a047, #76d275);
        margin: 0;
        padding: 0;
        color: #ffffff;
    }
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }
    h2 {
        font-size: 2.5rem;
        margin-bottom: 20px;
        text-transform: uppercase;
        letter-spacing: 1.5px;
    }
    p {
        font-size: 1.2rem;
        margin-bottom: 30px;
        color: #e8f5e9;
    }
    a {
        text-decoration: none;
        font-size: 1.2rem;
        color: #ffffff;
        background-color: #ff7043;
        padding: 12px 25px;
        border-radius: 8px;
        font-weight: bold;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }
    a:hover {
        background-color: #f4511e;
        transform: scale(1.05);
    }
    a:focus {
        outline: none;
    }
</style>
</head>
<body>
    <div class="container">
        <div>
            <h2>Cancellation Successful</h2>
            <p>${message}</p>
            <a href="/index">Return to Home</a>
        </div>
    </div>
</body>
</html>
