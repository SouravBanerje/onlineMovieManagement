<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Movie Show List</title>
</head>
<body>
    <h1>List of Movie Shows</h1>
    
    <table>
        <thead>
            <tr>
                <th>Movie Show ID</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="movieShow" items="${movieShowList}">
                <tr>
                    <td>${movieShow.id}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/theatre/deleteMovieShow/${screenId}/${movieShow.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="${pageContext.request.contextPath}/theatre/addMovieShow/${screenId}">Add New Movie Show</a>
</body>
</html>