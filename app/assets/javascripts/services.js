$(document).ready(function() {

    //текущий урл
    var url = window.location.href;
    var arr = url.split('/');
    var last_url = arr[arr.length-1];

    //все урлы по услугам
    var mass_link = $(".article__list-item a");

    for(var i = 0; i < mass_link.length; i++){
        var link_url = $(mass_link[i]).attr('href');
        //если текущий урл совпадает со ссылкой в услугах, то выделяем
        if ("/"+last_url == link_url){
            $(mass_link[i]).css('color', '#4e9c84');
            $(mass_link[i]).css('font-weight', '900');
        }
    }

    //swiper-slider
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        slidesPerView: 6,
        paginationClickable: true,
        spaceBetween: 30,
        freeMode: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev'
    });

    //вызов модальной формы записи при плавающей кнопке
    $('.modal_forma').click(function () {
        $('.vspl_forma').css("display", "block");
        $('.vspl').css("display", "block");
    });

    //вызов модальной формы записи при обычной кнопке
    $('.modal_forma_in').click(function () {
        $('.vspl_forma').css("display", "block");
        $('.vspl').css("display", "block");
    });

    //закрываем модальную форму
    $('.close_forma').click(function () {
        $('.vspl_forma').css("display", "none");
        $('.vspl').css("display", "none");
        $('.success').html('');
    });


    // при прокрутке окна (window) делаем видимой или нет плавующую кнопку записи
    $(window).scroll(function () {
        //высота footer
        var height_footer = $(".footer").offset();
        //сколько отскролено снизу
        var scrollBottom = $(window).scrollTop() + $(window).height();

        // если пользователь прокрутил страницу до footer
        if (scrollBottom > height_footer.top) {
            // то сделать кнопку невидимой
            $('.signup_service').fadeOut();
            $('.modal_forma_in').fadeIn();
        }
        // иначе сделать кнопку видимой
        else {
            $('.signup_service').fadeIn();
            $('.modal_forma_in').fadeOut();
        }
    });

});