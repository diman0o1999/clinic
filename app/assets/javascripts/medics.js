$(document).ready(function() {

    var filials = $('.nav-justified li');

    //текущий урл
    var url = window.location.href;
    var arr = url.split('/');
    var last_url = arr[arr.length-1];

    //если текущий урл это врачи
    if(last_url == 'medics') {
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
                            "<figure class='doctor__fig'><img src="+file.avatar.url+"></figure>" +
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
                            "<span class='doctor__desc-item_reiting'>Рейтинг: " + raiting + "</span>" +
                            "<span class='hidden_id_medic"+file.id+"'></span>" +
                            "</div>" +
                            "<form class='mark_medic' id='mark_medic' action='/medics' accept-charset='UTF-8' data-remote='true' method='post'>" +
                            "<input name='utf8' type='hidden' value='✓'>" +
                            "<select id = 'mark' name = 'mark'>" +
                            "<option value='1'>1</option>" +
                            "<option value='2'>2</option>" +
                            "<option value='3'>3</option>" +
                            "<option value='4'>4</option>" +
                            "<option value='5'>5</option>" +
                            "</select>" +
                            "<div class = 'mark_btn'>" +
                            "<p><input type='submit' name='mark_btn' value='Оценить врача'</p>" +
                            "</div>" +
                            "<p><input type='hidden' name='medic_id' value='"+ file.id +"'</p>" +
                            "<div class = 'hid_id_patient'>" +
                            "<p><input type='hidden' name='patient_id' value=''</p>" +
                            "</div>" +
                            "</form>" +
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
                            "<figure class='doctor__fig'><img src="+file.avatar.url+"></figure>" +
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
                            "<span class='doctor__desc-item_reiting'>Рейтинг: " + raiting + "</span>" +
                            "<span class='hidden_id_medic"+file.id+"'></span>" +
                            "</div>" +
                            "<form class='mark_medic' id='mark_medic' action='/medics' accept-charset='UTF-8' data-remote='true' method='post'>" +
                            "<input name='utf8' type='hidden' value='✓'>" +
                            "<select id = 'mark' name = 'mark'>" +
                            "<option value='1'>1</option>" +
                            "<option value='2'>2</option>" +
                            "<option value='3'>3</option>" +
                            "<option value='4'>4</option>" +
                            "<option value='5'>5</option>" +
                            "</select>" +
                            "<div class = 'mark_btn'>" +
                            "<p><input type='submit' name='mark_btn' value='Оценить врача'</p>" +
                            "</div>" +
                            "<p><input type='hidden' name='medic_id' value='"+ file.id +"'</p>" +
                            "<div class = 'hid_id_patient'>" +
                            "<p><input type='hidden' name='patient_id' value=''</p>" +
                            "</div>" +
                            "</form>" +
                            "</article>"
                        );
                    }
                });
            }
        )
    });



    //закидываем id пациента в форму оценки при клике на кнопку "оценить врача"
    $('body').on('click', '.mark_btn', function () {
        var id_patient = $('.patient_id').text();
        $('.hid_id_patient input').val(id_patient );
    });

    //обрабатываем json ответ ajax формы оценки врача
    $("body").on("ajax:success", ".mark_medic", function(xhr, data) {
        $(".vspl").css('display', 'block');
        $(".vspl_ok").css('display', 'block');

        //по id находим элемент
        var neighbor = $(".hidden_id_medic"+ data.id);
        //находим соседний с рейтингом и обновляем
        $($(neighbor).siblings()).html("Рейтинг: "+data.mark_medic);

        setTimeout(function() { $(".vspl_ok").hide('slow'); }, 2000);
        setTimeout(function() { $(".vspl").hide('fast'); }, 2000);
    }).on("ajax:error", function(xhr, data) {
        var status = data.status;
        if(status == 500) {
            $(".vspl").css('display', 'block');
            $(".vspl_error_422").css('display', 'block');
        }
        if(status == 422) {
            $(".vspl").css('display', 'block');
            $(".vspl_error").css('display', 'block');
        }
    });

    //закрываем всплывающее окно на врачах
    $('body').on('click', '.close_medic', function () {
        $(".vspl_error").css('display', 'none');
        $(".vspl").css('display', 'none');
    });

    $('body').on('click', '.close_medic', function () {
        $(".vspl_ok").css('display', 'none');
        $(".vspl").css('display', 'none');
    });

    $('body').on('click', '.close_medic', function () {
        $(".vspl_error_422").css('display', 'none');
        $(".vspl").css('display', 'none');
    })



});