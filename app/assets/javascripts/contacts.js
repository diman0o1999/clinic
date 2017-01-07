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

    //очищаем сообщения об ошибках и удачных отправлениях при переходе на другую вкладку в контактах/во врачах
    filials.click(function () {
        $(".success").empty();
        $(".error").empty();
    });

});