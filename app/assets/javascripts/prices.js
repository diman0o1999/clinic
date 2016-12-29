$(document).ready(function() {

    var departaments = $('.panel-default');

    //выборка цен в зависимости от отделения
    departaments.click(function () {
        var num = $(this).find('.hidden').text();
        $.post(
            "/prices/" + num,
            function (data) {
                var box = $('ul.price__list');
                $(box).empty();
                data.forEach (function(file){
                    $(box).append(
                        "<li class='price__list-item'>" +
                            "<div class='price__name'>" + file.price_name + "</div>" +
                            "<div class='price__value'>" + file.price + " руб." + "</div>" +
                        "</li>"
                    );
                    $(".toggler__item").addClass("toggler__item_active");
                });
            }
        )
    });

});
