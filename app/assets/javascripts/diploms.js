$(document).ready(function() {

    $("select")
        .change(function () {
            $.post(
                "/diploms/" + ($('select').val()),
                function (data) {
                    box = $('.fotorama');
                    box.empty();
                    data.forEach (function(file){
                        box.append("<img src=/assets/pictures/diploma/" + file + ">" );
                        //$($('.item')[0]).addClass('active')
                    });
                }
            )
        }).change();

});