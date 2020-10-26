<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>web_lab2</title>
    <link rel="stylesheet" href="css/main.css">
    <script src="js/formValidator.js"></script>
</head>

<body>
<div class="header">
    <span class="task">Вариант 2681</span>
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
            <input class="form__input-X" name="value-X" id="value-X" placeholder="(-3..3)">
        </div>

        <div class="form__element">
            <div class="form__label">Y =</div>
            <select class="form__input-Y" name="value-Y" id="value-Y">
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

            <div class="form__input-R">
                <input id="radio-1" type="radio" name="value-R" value="1" checked>
                <label for="radio-1">1</label>
            </div>

            <div class="form__input-R">
                <input id="radio-2" type="radio" name="value-R" value="2" checked>
                <label for="radio-2">2</label>
            </div>

            <div class="form__input-R">
                <input id="radio-3" type="radio" name="value-R" value="3" checked>
                <label for="radio-3">3</label>
            </div>

            <div class="form__input-R">
                <input id="radio-4" type="radio" name="value-R" value="4" checked>
                <label for="radio-4">4</label>
            </div>

            <div class="form__input-R">
                <input id="radio-5" type="radio" name="value-R" value="5" checked>
                <label for="radio-5">5</label>
            </div>

        </div>

        <div class="form__element">
            <button class="btn_clear" id="clearTableBtn">CLEAR TABLE</button>
            <button class="btn_clear" onclick="clearForm()">CLEAR FORM</button>
        </div>

        <div class="form__element">
            <button class="btn_submit" type="submit">CHECK</button>
        </div>

    </form>
</div>

</div>

<div class="table-container">
    <jsp:include page="jsp/table.jsp"/>
</div>

<footer>
    <a href="https://github.com/vlktna/web_lab2">
        <svg aria-hidden="true" class="github-icon" height="32" viewBox="0 0 16 16" width="32">
            <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"
                  fill-rule="evenodd" fill=#84dcc6>
            </path>
        </svg>
    </a>
</footer>

</body>

<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script src="js/clearTable.js"></script>
<script src="js/plotValidator.js"></script>
</html>
