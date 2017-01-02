$(document).ready(function() {

    var filials = $('.nav-justified li');

    //текущий урл
    var url = window.location.href;
    var host = 'http://localhost:3000';
    url = url.replace (new RegExp (host, 'g'), '');
    //если текущий урл это врачи
    if(url == '/medics') {
        //выводим врачей по дефолту на первый филиал
        $.post(
            "/medics/1",
            function (data) {
                var box = $('#list-medic');
                box.empty();
                data.forEach(function (file) {
                    var raiting = '';
                    if (file.raiting == 0) {
                        raiting = "Врача еще не оценили";
                    }
                    else {
                        raiting = file.raiting;
                    }
                    if(file.status_medic == 1) {
                        box.append(
                            "<article class='doctor__item'>" +
                            "<figure class='doctor__fig'><img src=/assets/pictures/doctors/" + file.foto + "></figure>" +
                            "<div class='doctor__body'>" +
                            "<div class='doctor__head'>" +
                            "<h3 class='doctor__name'> <span class='doctor__name-f'>" + file.surname + "</span>" + file.user_name + ' ' + file.patronymic + "</h3>" +
                            "<div class='doctor__meta'>" +
                            "<div class='doctor__meta-lbl'>Дни приема:</div>" +
                            "<div class='doctor__meta-item'>" + file.daywork1 + "</div>" +
                            "</div>" +
                            "<div class='doctor__desc'>" +
                            "<span class='doctor__desc-item'>" + file.post1 + "</span>" +
                            "<span class='doctor__desc-item'>" + file.post2 + "</span>" +
                            "<span class='doctor__desc-item'>" + file.post3 + "</span>" +
                            "</div>" +
                            "</div>" +
                            "<div class='doctor__entry'>" + file.about + "</div>" +
                            "<div class='doctor__desc'>" +
                            "<span class='doctor__desc-item'>Рейтинг: " + raiting + "</span>" +
                            "</div>" +
                            "</article>"
                        );
                    }
                });
            }
        );
    }

    //выборка врачей в зависимости от филиала
    filials.click(function () {
        var num = $(this).find('.hidden').text();
        $.post(
            "/medics/" + num,
            function (data) {
                var box = $('#list-medic');
                box.empty();
                data.forEach (function(file){
                    var raiting = '';
                    if(file.raiting == 0){
                        raiting = "Врача еще не оценили";
                    }
                    else{
                        raiting = file.raiting;
                    }

                    var daywork = file.daywork;
                    if(num == 1){
                        daywork = file.daywork1;
                    }
                    if(num == 2){
                        daywork = file.daywork2;
                    }
                    if(num == 3){
                        daywork = file.daywork3;
                    }
                    if(daywork == '') {
                        daywork = "Не принимает в этом филиале";
                    }
                    if(file.status_medic == 1) {
                        box.append(
                            "<article class='doctor__item'>" +
                            "<figure class='doctor__fig'><img src=/assets/pictures/doctors/" + file.foto + "></figure>" +
                            "<div class='doctor__body'>" +
                            "<div class='doctor__head'>" +
                            "<h3 class='doctor__name'> <span class='doctor__name-f'>" + file.surname + "</span>" + file.user_name + ' ' + file.patronymic + "</h3>" +
                            "<div class='doctor__meta'>" +
                            "<div class='doctor__meta-lbl'>Дни приема:</div>" +
                            "<div class='doctor__meta-item'>" + daywork + "</div>" +
                            "</div>" +
                            "<div class='doctor__desc'>" +
                            "<span class='doctor__desc-item'>" + file.post1 + "</span>" +
                            "<span class='doctor__desc-item'>" + file.post2 + "</span>" +
                            "<span class='doctor__desc-item'>" + file.post3 + "</span>" +
                            "</div>" +
                            "</div>" +
                            "<div class='doctor__entry'>" + file.about + "</div>" +
                            "<div class='doctor__desc'>" +
                            "<span class='doctor__desc-item'>Рейтинг: " + raiting + "</span>" +
                            "</div>" +
                            "</article>"
                        );
                    }
                });
            }
        )
    });

});