function notNumber(input) {
    return isNaN(Number(input.value))
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

    if (input.value >= maxValue) {
        alert(`Число ${input.name} должно быть меньше ${maxValue}`)
        return false

    } else if (input.value <= minValue) {
        alert(`Число ${input.name} должно быть больше ${minValue}`)
        return false
    } else {
        return true
    }
}

function clearForm() {
    document.getElementById("value-X").value = ""
}

