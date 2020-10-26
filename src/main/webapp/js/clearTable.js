document.getElementById("clearTableBtn").onclick = function () {
    $.ajax({
        url: 'controller',
        type: 'DELETE',
        success: function () {
        }
    });
}
