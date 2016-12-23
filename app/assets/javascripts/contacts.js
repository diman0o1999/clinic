$(document).ready(function() {

    //в контактах делаем первый филиал активным
    var filials = $('.nav-justified li');
    $($(filials[0])).addClass('active');

    var filials_text = $('.tab-content .tab-pane');
    $($(filials_text[0])).addClass('active');

    //подставляем id филиала в value у скрытого поля filial
    $('.form-gr-3').click(function () {
        var id_filial = $('.active .hidden').text();
        $('.form-gr-4 input').val(id_filial);
    });

    //очищаем сообщения об ошибках и удачных отправлениях при переходе на другую вкладку в контактах
    filials.click(function () {
        $(".success").empty();
        $(".error").empty();
    });

    //обрабатываем json ответ ajax формы записи клиента
    $(".new_form").on("ajax:success", function(xhr, data) {
        $(".success").empty();
        $(".error").empty();
        $(this).append("<div class = 'success'>" + data.form.name + ", Ваша заявка принята!" + "</div>");
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

});