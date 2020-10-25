<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>web_lab2</title>
    <link rel="stylesheet" href="css/main.css">
    <script src="js/script.js"></script>
</head>

<body>
<div class="header">
    <span>Вариант 2681</span>
    <span class="stud_name">Волокитина Вероника, P3230</span>
</div>

<div class="container">
    <div class="plot-container">
        <jsp:include page="jsp/plot.jsp"/>
    </div>

    <form class="form-container" method="get" action="controller"
          onsubmit="return inputValidation(document.getElementById('value-X'), -3, 3)">

    <div class="form__element">
            <div class="form__label">X =</div>
            <input class="form__input" name="value-X" id="value-X" placeholder="(-3..3)">
        </div>

        <div class="form__element">
            <div class="form__label">Y =</div>
            <select class="form__input" name="value-Y" id="value-Y">
                <option value="-4">-4</option>
                <option value="-3">-3</option>
                <option value="-2">-2</option>
                <option value="-1">-1</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
        </div>

        <div class="form__element">
            <div class="form__label">R =</div>

            <div class="form__input">
                <input id="radio-1" type="radio" name="value-R" value="1" checked>
                <label for="radio-1">1</label>
            </div>

            <div class="form__input">
                <input id="radio-2" type="radio" name="value-R" value="2" checked>
                <label for="radio-2">2</label>
            </div>

            <div class="form__input">
                <input id="radio-3" type="radio" name="value-R" value="3" checked>
                <label for="radio-3">3</label>
            </div>

            <div class="form__input">
                <input id="radio-4" type="radio" name="value-R" value="4" checked>
                <label for="radio-4">4</label>
            </div>

            <div class="form__input">
                <input id="radio-5" type="radio" name="value-R" value="5" checked>
                <label for="radio-5">5</label>
            </div>

        </div>

        <div class="form__element">
            <button id="clearTableBtn">CLEAR TABLE</button>
            <button onclick="clearForm()">CLEAR FORM</button>
        </div>

        <div class="form__element">
            <button type="submit">CHECK</button>
        </div>

    </form>
</div>

</div>

<div class="table-container">
    <jsp:include page="jsp/table.jsp"/>
</div>

</body>

<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script src="js/clearTable.js"></script>
</html>
