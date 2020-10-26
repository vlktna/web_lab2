let plot = document.getElementById("plot")

plot.addEventListener("click", function () {

    const rect = plot.getBoundingClientRect();
    const valueR = document.querySelector('input[name="value-R"]:checked').value

    // Координаты точки (0, 0) в системе координат графика
    const centerX = rect.left + 300
    const centerY = rect.top + 300

    // Координаты выбранной точки в системе координат окна
    const valueX = event.clientX
    const valueY = event.clientY

    // Координаты выбранной точки в системе координат графика
    const calcX = ((valueX - centerX) * valueR / 200).toFixed(3)
    const calcY = ((centerY - valueY) * valueR / 200).toFixed(3)
    console.log(calcX)

    if (valueR !== null && isPointIn("X", calcX, -3, 3)
        && isPointIn("Y", calcY, -4, 4)) {
        $.ajax({
            url: "controller",
            type: "GET",
            data: "value-X=" + calcX + "&value-Y=" + calcY + "&value-R=" + valueR,
            success: function () {
                location.replace("http://localhost:8080/web_lab2")
            }
        })
    }
})

