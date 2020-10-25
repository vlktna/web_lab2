<%@ page import="model.DataInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String cx;
    String cy;
    String r;

    try {
        List<DataInfo> tableData = (ArrayList<DataInfo>) session.getAttribute("tableData");
        DataInfo data = tableData.get(tableData.size() - 1);
        double calcX = 300 + data.getValueX() * 200 / data.getValueR();
        double calcY = 300 - data.getValueY() * 200 / data.getValueR();

        cx = String.valueOf(calcX);
        cy = String.valueOf(calcY);
        r = "8";

    } catch (NullPointerException e) {
        cx = "0";
        cy = "0";
        r = "0";
    }
%>

<html>
<head>
    <title>web_lab2</title>
</head>
<body>
<svg height="600" width="600" id="plot">
    <polygon class="rectangle-graph" fill=#95a3b3
             points="300,300 300,200 100,200 100,300"></polygon>

    <polygon class="rectangle-graph" fill=#95a3b3
             points="300,300 300,200 400,300"></polygon>

    <polygon class="rectangle-graph" fill=#95a3b3
             points="300,300 401,300 300,401"></polygon>

    <path class="circle-graph" d="M 400,300 A 100,100 0 0, 1 300,400" fill=#95a3b3></path>

    <line class="axis" stroke="black" x1="50" x2="550" y1="300" y2="300"></line>
    <line class="axis" stroke="black" x1="300" x2="300" y1="50" y2="550"></line>

    <line class="arrow" stroke="black" x1="535" x2="550" y1="295" y2="300"></line>
    <line class="arrow" stroke="black" x1="535" x2="550" y1="305" y2="300"></line>

    <line class="arrow" stroke="black" x1="295" x2="300" y1="65" y2="50"></line>
    <line class="arrow" stroke="black" x1="300" x2="305" y1="50" y2="65"></line>

    <line class="point-line" stroke="black" x1="400" x2="400" y1="295" y2="305"></line>
    <line class="point-line" stroke="black" x1="500" x2="500" y1="295" y2="305"></line>
    <line class="point-line" stroke="black" x1="200" x2="200" y1="295" y2="305"></line>
    <line class="point-line" stroke="black" x1="100" x2="100" y1="295" y2="305"></line>

    <line class="point-line" stroke="black" x1="295" x2="305" y1="400" y2="400"></line>
    <line class="point-line" stroke="black" x1="295" x2="305" y1="500" y2="500"></line>
    <line class="point-line" stroke="black" x1="295" x2="305" y1="200" y2="200"></line>
    <line class="point-line" stroke="black" x1="295" x2="305" y1="100" y2="100"></line>

    <text class="point-text" x="310" y="205" font-size="20px">R/2</text>
    <text class="point-text" x="310" y="105" font-size="20px">R</text>
    <text class="point-text" x="310" y="405" font-size="20px">-R/2</text>
    <text class="point-text" x="310" y="505" font-size="20px">-R</text>

    <text class="point-text" x="95" y="290" font-size="20px">-R</text>
    <text class="point-text" x="195" y="290" font-size="20px">-R/2</text>
    <text class="point-text" x="395" y="290" font-size="20px">R/2</text>
    <text class="point-text" x="495" y="290" font-size="20px">R</text>

    <text class="point-text" x="550" y="290" font-size="20px">X</text>
    <text class="point-text" x="310" y="60" font-size="20px">Y</text>

    <circle cx=<%=cx%> cy=<%=cy%> fill=#84dcc6 id="target-dot" r=<%=r%>></circle>
</svg>
</body>
</html>
