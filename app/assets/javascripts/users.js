$(document).ready(function() {

    //все вкладки по ролям
    var roles = $('.nav-justified li');

    //текущий урл
    var url = window.location.href;
    var arr = url.split('/');
    var last_url = arr[arr.length-1];

    //ответ ajax
    var json = function (data) {
        var box = $('.list_applications');
        box.empty();
        data.forEach (function(file){
            var date = new Date(file.created_at);
            box.append(
                "<tr>" +
                "<td>" + file.surname + " " + file.user_name + " " + file.patronymic + "</td>" +
                "<td class = 'profil'>" +
                "<a href='/users/"+file.id+"'>Профиль</a>" +
                "</td>" +
                "</tr>"
            );
        });
    };

    //если текущий урл это пользователи
    if(last_url == 'users') {

        //выборка юзеров по умолчанию на роль "врач"
        $.post(
            "/users/1",
            json
        );

        //выборка юзеров в зависимости от роли
        roles.click(function () {
            var num = $(this).find('.hidden').text();
            $.post(
                "/users/" + num,
                json
            )
        });
    }

});