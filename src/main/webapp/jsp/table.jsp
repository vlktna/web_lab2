<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>web_lab2</title>
</head>
<body>

<table>
    <tr>
        <th>X</th>
        <th>Y</th>
        <th>R</th>
        <th>RESULT</th>
        <th>TIME</th>
    </tr>
    <c:forEach items="${tableData}" var="data">
        <tr>
            <td>${data.valueX}</td>
            <td>${data.valueY}</td>
            <td>${data.valueR}</td>
            <td>${data.result}</td>
            <td>${data.time}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
