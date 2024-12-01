<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Screen</title>
</head>
<body>
    <h1>Add New Screen</h1>
    
    <!-- Screen Addition Form -->
    <form:form modelAttribute="ScreenRecord" method="post" action="/addScreen">
        <table>
            <tr>
                <td><label for="screen_id">Screen ID:</label></td>
                <td><form:input path="screen_id" id="screen_id" readonly="true" /></td>
            </tr>
            <tr>
                <td><label for="screenName">Screen Name:</label></td>
                <td><form:input path="screenName" id="screenName" required="true" /></td>
            </tr>
        </table>
        <br>
        <button type="submit">Add Screen</button>
    </form:form>

    <br>
    <a href="/index">Back to Home</a>
</body>
</html>
 --%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Screen</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url("https://i.imgur.com/MTsvdmz.jpg"); /* Replace with the path to your background image */
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            color: #333;
        }
        h1 {
            text-align: center;
            color: #fff;
            text-shadow: 2px 2px 4px #000;
        }
        form {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            margin: 50px auto;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        table {
            width: 100%;
        }
        table td {
            padding: 10px;
        }
        table td label {
            font-weight: bold;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 10px;
            text-decoration: none;
            color: #007BFF;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Add New Screen</h1>
    
    <!-- Screen Addition Form -->
    <form:form modelAttribute="ScreenRecord" method="post" action="/addScreen">
        <table>
            <tr>
                <td><label for="screen_id">Screen ID:</label></td>
                <td><form:input path="screen_id" id="screen_id" readonly="true" /></td>
            </tr>
            <tr>
                <td><label for="screenName">Screen Name:</label></td>
                <td><form:input path="screenName" id="screenName" required="true" /></td>
            </tr>
        </table>
        <br>
        <button type="submit">Add Screen</button>
    </form:form>

    <br>
    <a href="/index">Back to Home</a>
</body>
</html>
 