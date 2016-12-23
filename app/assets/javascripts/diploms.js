$(document).ready(function() {

    $("#select-medic select")
        .change(function () {
            $.post(
                "/diploms/" + ($('select').val()),
                function (data) {
                    var box = $('.diplom');
                    box.empty();
                    data.forEach (function(file){
                        box.append("<div class = 'item'><img src=/assets/pictures/diploma/" + file + "></div>" );
                        $($('.item')[0]).addClass('active')
                    });
                }
            )
        }).change();

});