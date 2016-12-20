$(document).ready(function() {

    //в контактах делаем первый филиал активным
    var filials = $('.nav-justified li');
    $($(filials[0])).addClass('active');

    var filials_text = $('.tab-content .tab-pane');
    $($(filials_text[0])).addClass('active');

    //в контактах смотрим на параметр value у скрытого поля filial:
    //если оно пустое, то по клику подставляем название этого филиала, если нет, то ничего не делаем
    //- нужно для сохранения названия филиала при возникновении ошибок на форме
    //var filial_val = $('.form-gr-4 input').val();
    //if (filial_val == 0) {
    //$('.form-gr-3').click(function () {
    //var filial = $('.nav-justified li.active').text();
    //$('.form-gr-4 input').val(filial);
    //});
    //}

    //подставляем id филиала в value у скрытого поля filial
    $('.form-gr-3').click(function () {
        var id_filial = $('.active .hidden').text();
        $('.form-gr-4 input').val(id_filial);
    });

});
