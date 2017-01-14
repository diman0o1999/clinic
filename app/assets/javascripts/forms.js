$(document).ready(function() {

    //обрабатываем json ответ ajax формы записи клиента
    $(".new_form").on("ajax:success", function(xhr, data) {
        $(".success").empty();
        $(".error").empty();
        $(this).append("<div class = 'success'>" + data.form.form_name + ", Ваша заявка принята!" + "</div>");
        $(this).find('input').val('');
    }).on("ajax:error", function(xhr, data) {
        var mass = data.responseJSON;
        $(".error").empty();
        for (var i in mass) {
            for (var j in mass[i]) {
                var error = mass[i][j];
                $(this).append("<div class = 'error'>" + error + "</div>");
            }
        }
    });

    //преобразуем дату в нормальный вид
    function formatDate(date) {

        var day = date.getDate();

        if (day < 10) day = '0' + day;

        var month = date.getMonth() + 1;
        if (month < 10) month = '0' + month;

        var year = date.getFullYear() % 100;
        if (year < 10) year = '0' + year;

        var hour = date.getHours();
        if(hour < 10) hour = '0' + hour;

        var minute = date.getMinutes();
        if(minute < 10) minute = '0' + minute;

        return "Дата: " + day + '.' + month + '.' + year + '<br>Время: ' + hour + ':' + minute;
    }

    //все вкладки по филиалам
    var filials = $('.nav-justified li');

    //текущий урл
    var url = window.location.href;
    var arr = url.split('/');
    var last_url = arr[arr.length-1];

    //ответ ajax
    var json = function (data) {
        var box = $('.list_applications');
        box.empty();
        data.forEach (function(file){
            var date = new Date(file.created_at);
            box.append(
                "<tr>" +
                "<td>" + file.form_name + "</td>" +
                "<td>" + file.telephone + "</td>" +
                "<td>" + formatDate(date) + "</td>" +
                "</tr>"
            );
        });
    };

    //если текущий урл это заявки
    if(last_url == 'forms') {

        //выборка заявок по умолчанию на первый филиал
            $.post(
                "/forms/1",
                json
            );

        //выборка заявок в зависимости от филиала
        filials.click(function () {
            var num = $(this).find('.hidden').text();
            $.post(
                "/forms/" + num,
                json
            )
        });
    }

});