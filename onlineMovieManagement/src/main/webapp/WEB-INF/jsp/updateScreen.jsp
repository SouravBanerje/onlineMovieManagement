<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Screen</title>
</head>
<body>
    <h1>Update Screen</h1>
    
    <form:form action="/updateScreen/${ScreenRecord.screen_id}" method="post" modelAttribute="ScreenRecord">
        <input type="hidden" name="screen_id" value="${ScreenRecord.screen_id}" />

        <label for="screenName">Screen Name:</label>
        <form:input path="screenName" id="screenName" value="${ScreenRecord.screenName}" required="true" />
        
    
        
        <input type="submit" value="Update Screen" />
    </form:form>

    <a href="/theatre/reportScreen" class="back-link">Back to Screen Report</a>
</body>
</html>
 --%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Screen</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            color: #fff;
            background: url("https://i.imgur.com/MTsvdmz.jpg") no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        h1 {
            text-align: center;
            color: #ffcc00;
            font-size: 28px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        form:input, input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .back-link {
            display: inline-block;
            margin-top: 10px;
            color: #ffc107;
            text-decoration: none;
            font-size: 16px;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Screen</h1>

        <form:form action="/updateScreen/${ScreenRecord.screen_id}" method="post" modelAttribute="ScreenRecord">
            <input type="hidden" name="screen_id" value="${ScreenRecord.screen_id}" />

            <label for="screenName">Screen Name:</label>
            <form:input path="screenName" id="screenName" value="${ScreenRecord.screenName}" required="true" />

            <input type="submit" value="Update Screen" />
        </form:form>

        <a href="/theatre/reportScreen" class="back-link">Back to Screen Report</a>
    </div>
</body>
</html>
 