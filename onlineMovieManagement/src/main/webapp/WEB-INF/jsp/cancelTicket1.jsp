<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cancel Ticket</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(to bottom right, #3b8dff, #4fc3f7);
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

    form {
        background: rgba(0, 0, 0, 0.6);
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.5);
        width: 100%;
        max-width: 400px;
    }

    h2 {
        font-size: 2rem;
        margin-bottom: 20px;
        color: #ffcc00;
        text-transform: uppercase;
    }

    input[type="text"] {
        width: 90%;
        padding: 15px;
        margin: 15px 0;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 1rem;
        outline: none;
        box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    input[type="text"]::placeholder {
        color: #b0b0b0;
    }

    button {
        background: linear-gradient(to right, #56ab2f, #a8e063);
        color: white;
        border: none;
        padding: 12px 20px;
        font-size: 1rem;
        font-weight: bold;
        border-radius: 10px;
        cursor: pointer;
        transition: transform 0.3s ease, background 0.3s ease;
    }

    button:hover {
        background: linear-gradient(to right, #45a049, #8dc63f);
        transform: scale(1.05);
    }

    button:focus {
        outline: none;
    }
</style>
</head>
<body>
    <div class="container">
        <form action="/aboutCancel" method="get">
            <h2>Cancel Your Ticket</h2>
            <input type="text" name="ticket" placeholder="Enter your Ticket ID" required>
            <br>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
