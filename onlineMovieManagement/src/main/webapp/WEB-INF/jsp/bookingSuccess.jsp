<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Success</title>
</head>
<body>
<div align="center">
    <h1>🎉 Booking Confirmed! 🎉</h1>
    <h2>Your booking has been successfully completed.</h2>
    <table border="1" cellpadding="10">
        <tr>
            <th>Booking ID</th>
            <td>${ticket.ticketId}</td>
        </tr>
        <tr>
            <th>Movie Name</th>
            <td>${ticket.movieName}</td>
        </tr>
        <tr>
            <th>Show Time</th>
            <td>${ticket.showTimeName}</td>
        </tr>
        <tr>
            <th>Seat Type</th>
            <td>${ticket.seatType}</td>
        </tr>
        <tr>
            <th>Number of Seats</th>
            <td>${ticket.numberOfSeatBooking}</td>
        </tr>
        <tr>
            <th>Amount Payable</th>
            <td>${ticket.amountPayable}</td>
        </tr>
        <tr>
            <th>Transaction ID</th>
            <td>${ticket.transactionId}</td>
        </tr>
        <tr>
            <th>Status</th>
            <td>${ticket.status}</td>
        </tr>
    </table>
    <br/>
    <h3>Thank you for choosing our service! Enjoy the movie. 🍿🎬</h3>
    <br/>
    <a href="/index">Return to Home</a>
</div>
</body>
</html>
 --%>
<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("https://i.imgur.com/gqQK9DW.jpg") no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        h1 {
            font-size: 2.5em;
            margin-top: 30px;
            color: #4CAF50;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.8);
        }

        h2, h3 {
            font-size: 1.5em;
            margin-top: 15px;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.7);
        }

        table {
            margin: 30px auto;
            width: 60%;
            border-collapse: collapse;
            background-color: rgba(0, 0, 0, 0.7);
            border: 2px solid #4CAF50;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.8);
        }

        th, td {
            padding: 15px;
            text-align: left;
            font-size: 1.2em;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
        }

        td {
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 1.2em;
            color: #fff;
            background-color: #f57c00;
            text-decoration: none;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
        }

        a:hover {
            background-color: #ef6c00;
        }

        .center {
            text-align: center;
        }
    </style>
</head>
<body>
<div align="center">
    <h1>🎉 Booking Confirmed! 🎉</h1>
    <h2>Your booking has been successfully completed.</h2>
    <table>
        <tr>
            <th>Booking ID</th>
            <td>${ticket.ticketId}</td>
        </tr>
        <tr>
            <th>Movie Name</th>
            <td>${ticket.movieName}</td>
        </tr>
        <tr>
            <th>Show Time</th>
            <td>${ticket.showTimeName}</td>
        </tr>
        <tr>
            <th>Seat Type</th>
            <td>${ticket.seatType}</td>
        </tr>
        <tr>
            <th>Number of Seats</th>
            <td>${ticket.numberOfSeatBooking}</td>
        </tr>
        <tr>
            <th>Amount Payable</th>
            <td>${ticket.amountPayable}</td>
        </tr>
        <tr>
            <th>Transaction ID</th>
            <td>${ticket.transactionId}</td>
        </tr>
        <tr>
            <th>Status</th>
            <td>${ticket.status}</td>
        </tr>
    </table>
    <h3>Thank you for choosing our service! Enjoy the movie. 🍿🎬</h3>
    <a href="/index">Return to Home</a>
</div>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Success</title>
    <!-- Include jsPDF and html2canvas libraries -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("https://i.imgur.com/gqQK9DW.jpg") no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        h1 {
            font-size: 2.5em;
            margin-top: 30px;
            color: #4CAF50;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.8);
        }

        h2, h3 {
            font-size: 1.5em;
            margin-top: 15px;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.7);
        }

        table {
            margin: 30px auto;
            width: 60%;
            border-collapse: collapse;
            background-color: rgba(0, 0, 0, 0.7);
            border: 2px solid #4CAF50;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.8);
        }

        th, td {
            padding: 15px;
            text-align: left;
            font-size: 1.2em;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
        }

        td {
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff;
        }

        a, button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 1.2em;
            color: #fff;
            background-color: #f57c00;
            text-decoration: none;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
            border: none;
            cursor: pointer;
        }

        a:hover, button:hover {
            background-color: #ef6c00;
        }
    </style>
</head>
<body>
<div align="center" id="booking-content">
    <h1>🎉 Booking Confirmed! 🎉</h1>
    <h2>Your booking has been successfully completed.</h2>
    <table>
        <tr>
            <th>Booking ID</th>
            <td>${ticket.ticketId}</td>
        </tr>
        <tr>
            <th>Movie Name</th>
            <td>${ticket.movieName}</td>
        </tr>
        <tr>
            <th>Show Time</th>
            <td>${ticket.showTimeName}</td>
        </tr>
        <tr>
            <th>Seat Type</th>
            <td>${ticket.seatType}</td>
        </tr>
        <tr>
            <th>Number of Seats</th>
            <td>${ticket.numberOfSeatBooking}</td>
        </tr>
        <tr>
            <th>Amount Payable</th>
            <td>$ ${ticket.amountPayable}</td>
        </tr>
        <tr>
            <th>Transaction ID</th>
            <td>${ticket.transactionId}</td>
        </tr>
        <tr>
            <th>Status</th>
            <td>${ticket.status}</td>
        </tr>
    </table>
    <h3>Thank you for choosing our service! Enjoy the movie. 🍿🎬</h3>
    <a href="/index">Return to Home</a>
    <button onclick="generatePDF()">Download as PDF</button>
</div>

<script>
    function generatePDF() {
        const content = document.getElementById("booking-content");
        
        // Use html2canvas to render the content into a canvas
        html2canvas(content).then(canvas => {
            const imgData = canvas.toDataURL("image/png"); // Get the image data
            const { jsPDF } = window.jspdf; // Use jsPDF
            const doc = new jsPDF("p", "mm", "a4"); // Create a new jsPDF instance

            const imgWidth = 190; // Width of the PDF
            const imgHeight = (canvas.height * imgWidth) / canvas.width; // Calculate height to maintain aspect ratio

            // Add the image to the PDF
            doc.addImage(imgData, "PNG", 10, 10, imgWidth, imgHeight);
            
            // Save the PDF
            doc.save("booking-confirmation.pdf");
        }).catch(error => {
            console.error("An error occurred while generating the PDF:", error);
        });
    }
</script>
</body>
</html>

 