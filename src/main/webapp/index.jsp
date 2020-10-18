<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>web_lab2</title>
    <link rel="stylesheet" href="main.css">
</head>

<body>
<div class="header">
    <span>Вариант 2681</span>
    <span class="stud_name">Волокитина Вероника, P3230</span>
</div>

<div class="container">
    <div class="plot-container">

    </div>

    <div class="form-container">

        <form class="form">

            <div class="form__element">
                <div class="form__label">X =</div>
                <input class="form__input input_x" name="value-X">
            </div>

            <div class="form__element">
                <div class="form__label">Y =</div>
                <select class="form__input input_y" name="value-Y">
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
                <div class="form__input input_r">
                    <div class="input_r form_radio">

                        <div class="form_radio__btn">
                            <input id="radio-1" type="radio" name="value-R" value="1" checked>
                            <label for="radio-1">1</label>
                        </div>

                        <div class="form_radio__btn">
                            <input id="radio-2" type="radio" name="value-R" value="2" checked>
                            <label for="radio-2">2</label>
                        </div>

                        <div class="form_radio__btn">
                            <input id="radio-3" type="radio" name="value-R" value="3" checked>
                            <label for="radio-3">3</label>
                        </div>

                        <div class="form_radio__btn">
                            <input id="radio-4" type="radio" name="value-R" value="4" checked>
                            <label for="radio-4">4</label>
                        </div>

                        <div class="form_radio__btn">
                            <input id="radio-5" type="radio" name="value-R" value="5" checked>
                            <label for="radio-5">5</label>
                        </div>

                    </div>

                </div>

            </div>

            <div class="form__element">
                <button type="submit">CHECK</button>
            </div>

        </form>
    </div>

    <p>Name: ${name}</p>
    <p>Age: ${age}</p>
    <p>Age: ${value}</p>


</div>

</body>
</html>
