$(document).ready(function() {
    //кнопка скролинга вверх
    $(function () {
        // при нажатии на кнопку scrollup
        $('.scrollup').click(function () {
            // переместиться в верхнюю часть страницы
            $("html, body").animate({
                scrollTop: 0
            }, 1000);
        })
    });
    // при прокрутке окна (window)
    $(window).scroll(function () {
        // если пользователь прокрутил страницу более чем на 200px
        if ($(this).scrollTop() > 200) {
            // то сделать кнопку scrollup видимой
            $('.scrollup').fadeIn();
        }
        // иначе скрыть кнопку scrollup
        else {
            $('.scrollup').fadeOut();
        }
    });


    //в контактах делаем первый филиал активным
    var filials = $('.nav-justified li');
    $($(filials[0])).addClass('active');

    var filials_text = $('.tab-content .tab-pane');
    $($(filials_text[0])).addClass('active');

    //в контактах смотрим на параметр value у скрытого поля filial:
    //если оно пустое, то по клику подставляем название этого филиала, если нет, то ничего не делаем
    //- нужно для сохранения названия филиала при возникновении ошибок на форме
    var filial_val = $('.form-gr-4 input').val();
    if (filial_val == 0) {
        $('.form-gr-3').click(function () {
            var filial = $('.nav-justified li.active').text();
            $('.form-gr-4 input').val(filial);
        });
    }

    //на главной первая картинка слайдера активная
    var slider_img = $('.carousel-inner .item');
    $($(slider_img[0])).addClass('active');

});