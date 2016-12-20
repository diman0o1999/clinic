Filial.delete_all
Filial.reset_pk_sequence
Filial.create(
    [
        {name: 'Пионерская', metro: 'ст.метро «Пионерская»', telephone: 78123011040, address: 'Коломяжский проспект, 20', time_work: 'с 09:00 до 21:00', day_work: 'без выходных', telephone_full: '+7 (812) 301-10-40', map: 'https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=10BXC9OeNeLviWnmCBks4UcJP3KpMbRg&width=100%&height=300&lang=ru_RU&sourceType=constructor'},
        {name: 'Большевиков', metro: 'ст.метро «Проспект Большевиков»', telephone: 78125748345, address: 'улица Коллонтай 17, корпус 2', time_work: 'с 09:00 до 21:00', day_work: 'без выходных', telephone_full: '+7 (812) 574-83-45', map: 'https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=HcmxgpJBTuT-FY5amHsTxtWQLRBLuD1c&width=100%&height=300&lang=ru_RU&sourceType=constructor'},
        {name: 'Ленинский', metro: 'ст.метро «Ленинский проспект»', telephone: 78126204020, address: 'проспект Народного Ополчения, 10', time_work: 'с 09:00 до 21:00', day_work: 'без выходных', telephone_full: '+7 (812) 620-40-20', map: 'https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=kGp764s8WtHzyff6_fa_aUjejM269V9A&width=100%&height=300&lang=ru_RU&sourceType=constructor'}
    ]
)

Departament.delete_all
Departament.reset_pk_sequence
Departament.create(
    [
        {name: 'Терапия'},
        {name: 'Протезирование'},
        {name: 'Хирургия'},
        {name: 'Пародонтология'},
        {name: 'Ортодонтия'},
        {name: 'Детская стоматология'},
        {name: 'Рентгенология'},
        {name: 'Имплантация'},
        {name: 'Анестезиологические услуги'},
        {name: 'Эстетическая реставрация'}
    ]
)

Medics_filial.delete_all
Medics_filial.reset_pk_sequence
Medics_filial.create(
    [
        {medic_id: 1, filial_id: 1},
        {medic_id: 2, filial_id: 1},
        {medic_id: 2, filial_id: 2},
        {medic_id: 3, filial_id: 1},
    ]
)

Medic.delete_all
Medic.reset_pk_sequence
Medic.create(
    [
        {name: 'Эмиль', surname: 'Агаджанян', patronymic: 'Гургенович', daywork: 'понедельник, четверг', post: 'Генеральный директор, Врач высшей категории, Стоматолог-ортопед', foto: 'bg-doctor_m2.png', departament_id: 8, about: 'Член Американской Академии Косметической Стоматологии (AACD). Член Европейской Ассоциации Эстетической Стоматологии (European Academy of Esthetic Dentistry).', raiting: 0},
        {name: 'Светалана', surname: 'Жигунова', patronymic: 'Юрьевна', daywork: 'понедельник, четверг', post: 'Главный врач, Стоматолог-терапевт, Пародонтолог', foto: 'doc_zhigunova.jpg', departament_id: 1, about: 'В 2004 году получила диплом врача-стоматолога в СПбГМУ им. акад. И.П. Павлова, во время прохождения интернатуры по терапевтической стоматологии одновременно прошла специализацию и по хирургической стоматологии. Затем пришла работать в нашу только что открывшуюся клинику врачом-стажером и продолжила обучение, активно принимая участие в образовательных программах. Многочисленные семинары и научно-практические конференции, проводимые мировыми лидерами стоматологической индустрии, позволили мне достаточно быстро перейти к самостоятельной работе. «Эстетические решения в стоматологии» (Чикагский центр современной стоматологии), «Простые клинические решения в комплексной эстетической реабилитации зубов» (Шульц Дентал Групп), «Современная эндодонтия для практикующего врача» (Амрита), «Повторное эндодонтическое лечение. Ультразвук в эндодонтии» (Амрита), симпозиум «Вопросы эстетической стоматологии и подготовки к реконструктивному лечению» — и это только за один год.', raiting: 0},
        {name: 'Анна', surname: 'Дубинская', patronymic: 'Яковлевна', daywork: 'понедельник, вторник, четверг', post: 'Стоматолог-терапевт, Детский стоматолог', foto: 'bg-dubin.jpg', departament_id: 1, about: 'В 1987 году закончила Первый медицинский институт. Неоднократно проходила курсы усовершенствования при МАПО, в учебном центре «АМФОДЕНТ», принимала участие в международных стоматологических симпозиумах. Принимала участие в создании и вела цикл телевизионных передач по детской стоматологии в программах «Большой Фестиваль» и «Дороже денег». Имеет именной сертификат по эстетической реставрации зубов, работала в элитных клиниках города.', raiting: 0},
    ]
)

Diplom.delete_all
Diplom.reset_pk_sequence
Diplom.create(
    [
        {file: 'diplom_emil_1.jpg', medic_id: 1},
        {file: 'diplom_emil_2.jpg', medic_id: 1},
        {file: 'diplom_emil_3.jpg', medic_id: 1},
        {file: 'diplom_emil_4.jpg', medic_id: 1},
        {file: 'diplom_emil_5.jpg', medic_id: 1},
        {file: 'diplom_emil_6.jpg', medic_id: 1},
        {file: 'diplom_emil_7.jpg', medic_id: 1},
        {file: 'diplom_emil_8.jpg', medic_id: 1},
        {file: 'diplom_emil_9.jpg', medic_id: 1},
        {file: 'diplom_emil_10.jpg', medic_id: 1},
        {file: 'diplom_emil_11.jpg', medic_id: 1},
        {file: 'diplom_emil_12.jpg', medic_id: 1},
        {file: 'diplom_emil_13.jpg', medic_id: 1},
        {file: 'diplom_emil_14.jpg', medic_id: 1},
        {file: 'diplom_emil_15.jpg', medic_id: 1},
        {file: 'diplom_emil_16.jpg', medic_id: 1},
        {file: 'diplom_emil_17.jpg', medic_id: 1},
        {file: 'diplom_emil_18.jpg', medic_id: 1},
        {file: 'diplom_emil_19.jpg', medic_id: 1},
        {file: 'diplom_emil_20.jpg', medic_id: 1},
        {file: 'diplom_emil_21.jpg', medic_id: 1},
        {file: 'diplom_emil_22.jpg', medic_id: 1},
        {file: 'diplom_emil_23.jpg', medic_id: 1},
        {file: 'diplom_emil_24.jpg', medic_id: 1},
        {file: 'diplom_emil_25.jpg', medic_id: 1},
        {file: 'diplom_emil_26.jpg', medic_id: 1},
        {file: 'diplom_emil_27.jpg', medic_id: 1},
        {file: 'diplom_emil_28.jpg', medic_id: 1},
        {file: 'diplom_emil_29.jpg', medic_id: 1},
        {file: 'diplom_emil_30.jpg', medic_id: 1},
        {file: 'diplom_emil_31.jpg', medic_id: 1},
        {file: 'diplom_emil_32.jpg', medic_id: 1},
        {file: 'diplom_emil_33.jpg', medic_id: 1},
        {file: 'diplom_emil_34.jpg', medic_id: 1},
        {file: 'diplom_emil_31 (1).jpg', medic_id: 1},
        {file: 'diplom_jigunova_1.jpg', medic_id: 2},
        {file: 'diplom_jigunova_2.jpg', medic_id: 2},
        {file: 'diplom_jigunova_3.jpg', medic_id: 2},
        {file: 'diplom_jigunova_4.jpg', medic_id: 2},
        {file: 'diplom_jigunova_5.jpg', medic_id: 2},
        {file: 'diplom_okunev_1.jpg', medic_id: 3},
        {file: 'diplom_okunev_2.jpg', medic_id: 3},
        {file: 'diplom_okunev_3.jpg', medic_id: 3},
        {file: 'diplom_okunev_4.jpg', medic_id: 3},
        {file: 'diplom_okunev_5.jpg', medic_id: 3},
        {file: 'diplom_okunev_6.jpg', medic_id: 3},
        {file: 'diplom_okunev_7.jpg', medic_id: 3},
        {file: 'diplom_okunev_8.jpg', medic_id: 3},
        {file: 'diplom_okunev_9.jpg', medic_id: 3},
        {file: 'diplom_dubinskaya_1.jpg', medic_id: 4},
        {file: 'diplom_dubinskaya_2.jpg', medic_id: 4},
        {file: 'diplom_dubinskaya_3.jpg', medic_id: 4},
        {file: 'diplom_dubinskaya_4.jpg', medic_id: 4},
        {file: 'diplom_dubinskaya_5.jpg', medic_id: 4},
        {file: 'diplom_dubinskaya_6.jpg', medic_id: 4},
        {file: 'diplom_tihanova_1.jpg', medic_id: 5},
        {file: 'diplom_tihanovav_2.jpg', medic_id: 5},
        {file: 'diplom_tihanova_3.jpg', medic_id: 5},
        {file: 'diplom_tihanova_4.jpg', medic_id: 5},
        {file: 'diplom_tihanova_5.jpg', medic_id: 5},
        {file: 'diplom_tihanova_6.jpg', medic_id: 5},
        {file: 'diplom_tihanova_7.jpg', medic_id: 5},
        {file: 'diplom_tihanova_8.jpg', medic_id: 5},
        {file: 'diplom_tihanova_9.jpg', medic_id: 5},
    ]
)