<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Screen Reports</title>
</head>
<body>
    <h1>Screen Reports</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Screen ID</th>
                <th>Screen Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="screen" items="${screens}">
                <tr>
                    <td>${screen.screen_id}</td>
                    <td>${screen.screenName}</td>
                    <td>
                        <a href="/theatre/updateScreen/${screen.screen_id}">Update</a> |
                        <a href="/theatre/deleteScreen/${screen.screen_id}" 
                           onclick="return confirm('Are you sure you want to delete this screen?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br>
    <a href="/index">Back to Home</a>
</body>
</html>
 --%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Screen Reports</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url("https://i.imgur.com/MTsvdmz.jpg"); /* Replace with the path to your image */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
        }
        h1 {
            text-align: center;
            color: #fff;
            margin-top: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }
        table th, table td {
            padding: 12px 15px;
            text-align: center;
            border: 1px solid #ddd;
        }
        table th {
            background-color: #4CAF50;
            color: white;
        }
        table tr:nth-child(even) {
            background-color: rgba(240, 240, 240, 0.8);
        }
        table tr:hover {
            background-color: rgba(220, 220, 220, 0.9);
        }
        table a {
            color: #007BFF;
            text-decoration: none;
        }
        table a:hover {
            text-decoration: underline;
        }
        .actions a {
            margin: 0 5px;
            padding: 5px 10px;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            font-size: 0.9em;
        }
        .actions a:hover {
            opacity: 0.8;
        }
        .actions a.update {
            background-color: #4CAF50;
            color: white;
        }
        .actions a.delete {
            background-color: #FF5733;
            color: white;
        }
        a.back-link {
            display: block;
            text-align: center;
            margin: 20px auto;
            text-decoration: none;
            color: #007BFF;
            font-size: 1.1em;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 10px 15px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        a.back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Screen Reports</h1>
    <table>
        <thead>
            <tr>
                <th>Screen ID</th>
                <th>Screen Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="screen" items="${screens}">
                <tr>
                    <td>${screen.screen_id}</td>
                    <td>${screen.screenName}</td>
                    <td class="actions">
                        <a href="/updateScreen/${screen.screen_id}" class="update">Update</a>
                        <a href="/deleteScreen/${screen.screen_id}" class="delete" 
                           onclick="return confirm('Are you sure you want to delete this screen?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="/index" class="back-link">Back to Home</a>
</body>
</html>
 