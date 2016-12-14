<table>
<thead>
<tr><th colspan="2" align="center">user </th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>role</td><td>роль</td></tr>
<tr><td>login</td><td>логин</td></tr>
<tr><td>password</td><td>пароль</td></tr>
<tr><td colspan="2" align="center">Comment: Общая таблица пользователей, role три: пациент, врач, администратор</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">admin_info </th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>имя</td></tr>
<tr><td>id_user</td><td></td></tr>
<tr><td colspan="2" align="center">Comment: Таблица админов сайта</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">doc_info </th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>имя</td></tr>
<tr><td>surname</td><td>фамилия</td></tr>
<tr><td>patronymic</td><td>отчество</td></tr>
<tr><td>daywork</td><td>дни работы</td></tr>
<tr><td>foto</td><td>фото</td></tr>
<tr><td>post</td><td>должность</td></tr>
<tr><td>id_user</td><td></td></tr>
<tr><td>id_filial</td><td>филиал, в котором работает</td></tr>
<tr><td>id_departament</td><td>отделение, в котором работает</td></tr>
<tr><td colspan="2" align="center">Comment: Таблица врачей</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">patient_info </th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>имя</td></tr>
<tr><td>surname</td><td>фамилия</td></tr>
<tr><td>patronymic</td><td>отчество</td></tr>
<tr><td>number</td><td>номер телефона</td></tr>
<tr><td>id_user</td><td></td></tr>
<tr><td colspan="2" align="center">Comment: Таблица пациентов</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">raiting </th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>id_patient_info</td><td></td></tr>
<tr><td>id_doc_info</td><td></td></tr>
<tr><td>mark</td><td>оценка</td></tr>
<tr><td colspan="2" align="center">Comment: Таблица оценок врачей</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">filial </th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>название филиала</td></tr>
<tr><td colspan="2" align="center">Comment: Таблица филиалов клиники</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">departament </th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>название отделения</td></tr>
<tr><td colspan="2" align="center">Comment: Таблица отделений клиники</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">telephone </th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>number</td><td>номер телефона филиала</td></tr>
<tr><td>id_filial</td><td></td></tr>
<tr><td colspan="2" align="center">Comment: Таблица номеров телефона по филиалам</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">application_reg </th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>id_patient_info</td><td>пациент</td></tr>
<tr><td>id_doc_info</td><td>к кому записался</td></tr>
<tr><td>id_filial</td><td>в какой филиал записался</td></tr>
<tr><td>date</td><td>дата</td></tr>
<tr><td colspan="2" align="center">Comment: Заявки от зарегистрированных пациентов</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">application</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>ФИО</td></tr>
<tr><td>number</td><td>номер телефона</td></tr>
<tr><td>id_filial</td><td>в какой филиал записался</td></tr>
<tr><td>date</td><td>дата</td></tr>
<tr><td colspan="2" align="center">Comment: Заявки от незарегистрированных пациентов</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">timetable</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>id_status</td><td>статус записи</td></tr>
<tr><td>id_application_reg</td><td></td></tr>
<tr><td>id_applications</td><td></td></tr>
<tr><td colspan="2" align="center">Comment: Общая таблица заявок</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">status</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name_status</td><td>статус записи</td></tr>
<tr><td colspan="2" align="center">Comment: Статусы записей</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">price_list</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>услуга</td></tr>
<tr><td>price</td><td>цена</td></tr>
<tr><td>id_departament</td><td>отделение</td></tr>
<tr><td colspan="2" align="center">Comment: Прайсы по отделениям</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">section</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>контентный раздел</td></tr>
<tr><td colspan="2" align="center">Comment: Разделы сайта по отделениям</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">subsection</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>контентный подраздел</td></tr>
<tr><td>id_section</td><td>контентный раздел</td></tr>
<tr><td colspan="2" align="center">Comment: Подразделы сайта по отделениям</td></tr>
</tbody>

<table>
<thead>
<tr><th colspan="2" align="center">subsection</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>контентный подраздел</td></tr>
<tr><td>id_section</td><td>контентный раздел</td></tr>
<tr><td colspan="2" align="center">Comment: Подразделы сайта по отделениям</td></tr>
</tbody>

<table>
<thead>
<tr><th colspan="2" align="center">articles</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>title</td><td></td></tr>
<tr><td>description</td><td></td></tr>
<tr><td>text</td><td></td></tr>
<tr><td>id_section</td><td>контентный раздел</td></tr>
<tr><td colspan="2" align="center">Comment: Статьи на сайт или тексты услуг</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">service_text</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>title</td><td></td></tr>
<tr><td>description</td><td></td></tr>
<tr><td>text</td><td></td></tr>
<tr><td>id_subsection</td><td>контентный подраздел</td></tr>
<tr><td colspan="2" align="center">Comment: Тексты подуслуг</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">review</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>text</td><td></td></tr>
<tr><td>data</td><td></td></tr>
<tr><td>id_section</td><td></td></tr>
<tr><td>id_patient_info</td><td>кто оставил отзыв</td></tr>
<tr><td>id_status_text</td><td>статус публикации</td></tr>
<tr><td colspan="2" align="center">Comment: Отзывы</td></tr>
</tbody>

<table>
<thead>
<tr><th colspan="2" align="center">question</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>text</td><td>вопрос</td></tr>
<tr><td>answer_text</td><td>ответ</td></tr>
<tr><td>data</td><td></td></tr>
<tr><td>id_section</td><td></td></tr>
<tr><td>id_patient_info</td><td>кто оставил вопрос</td></tr>
<tr><td>id_doc_info</td><td>кто ответил</td></tr>
<tr><td>id_status_text</td><td>статус публикации</td></tr>
<tr><td colspan="2" align="center">Comment: Вопрос-ответ</td></tr>
</tbody>
</table>

<table>
<thead>
<tr><th colspan="2" align="center">status_text</th></tr>
</thead>
<tbody>
<tr><td>id</td><td></td></tr>
<tr><td>name</td><td>статус</td></tr>
<tr><td colspan="2" align="center">Comment: Статусы отзывов и вопрос-ответов</td></tr>
</tbody>
</table>

