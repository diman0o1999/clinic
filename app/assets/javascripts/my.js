$(document).ready(function(){
    //кнопка скролинга вверх
    $(function() {
        // при нажатии на кнопку scrollup
        $('.scrollup').click(function() {
            // переместиться в верхнюю часть страницы
            $("html, body").animate({
                scrollTop:0
            },1000);
        })
    });
    // при прокрутке окна (window)
    $(window).scroll(function() {
        // если пользователь прокрутил страницу более чем на 200px
        if ($(this).scrollTop()>200) {
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
    for(var i = 0; i < filials.length; i++) {
        if(i == 0) {
            $(filials[i]).addClass('active')
        }
    }

    //в контактах ищем активный филиал
    $('.form-gr-3').click(function(){
        var filial = $('.nav-justified li.active').text();
        $('.form-gr-4 input').val(filial);
    });

});