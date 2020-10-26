function notNumber(input) {
    return isNaN(Number(input.value))
}

function isPointIn(nameValue, value, min, max) {
    if (value >= max) {
        alert(`Число ${nameValue} должно быть меньше ${max}`)
        return false
    } else if (value <= min) {
        alert(`Число ${nameValue} должно быть больше ${min}`)
        return false
    } else {
        return true
    }
}

function inputValidation(input, minValue, maxValue) {
    if (notNumber(input)) {
        alert(`Поле ${input.name} должно быть числом`)
        return false
    }
    if (input.value.length >= 17) {
        alert(`Превышено количество символов`)
        return false
    }

    return isPointIn(input.name, input.value, minValue, maxValue)
}

function clearForm() {
    document.getElementById("value-X").value = ""
}

