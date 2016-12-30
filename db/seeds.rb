Filial.delete_all
Filial.reset_pk_sequence
Filial.create(
    [
        {
            filial_name: 'Пионерская',
            metro: 'ст.метро «Пионерская»',
            telephone: 78123011040,
            address: 'Коломяжский проспект, 20',
            time_work: 'с 09:00 до 21:00',
            day_work: 'без выходных',
            telephone_full: '+7 (812) 301-10-40',
            map: 'https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=10BXC9OeNeLviWnmCBks4UcJP3KpMbRg&width=100%&height=300&lang=ru_RU&sourceType=constructor'},
        {
            filial_name: 'Большевиков',
            metro: 'ст.метро «Проспект Большевиков»',
            telephone: 78125748345,
            address: 'улица Коллонтай 17, корпус 2',
            time_work: 'с 09:00 до 21:00',
            day_work: 'без выходных',
            telephone_full: '+7 (812) 574-83-45',
            map: 'https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=HcmxgpJBTuT-FY5amHsTxtWQLRBLuD1c&width=100%&height=300&lang=ru_RU&sourceType=constructor'},
        {
            filial_name: 'Ленинский',
            metro: 'ст.метро «Ленинский проспект»',
            telephone: 78126204020,
            address: 'проспект Народного Ополчения, 10',
            time_work: 'с 09:00 до 21:00',
            day_work: 'без выходных',
            telephone_full: '+7 (812) 620-40-20',
            map: 'https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=kGp764s8WtHzyff6_fa_aUjejM269V9A&width=100%&height=300&lang=ru_RU&sourceType=constructor'}
    ]
)

Departament.delete_all
Departament.reset_pk_sequence
Departament.create(
    [
        {departament_name: 'Терапия'},
        {departament_name: 'Протезирование'},
        {departament_name: 'Хирургия'},
        {departament_name: 'Пародонтология'},
        {departament_name: 'Ортодонтия'},
        {departament_name: 'Детская стоматология'},
        {departament_name: 'Рентгенология'},
        {departament_name: 'Имплантация'},
        {departament_name: 'Анестезиологические услуги'},
        {departament_name: 'Эстетическая реставрация'},
        {departament_name: 'Профессиональная гигиена'}
    ]
)

Role.delete_all
Role.reset_pk_sequence
Role.create(
    [
        {role_name: 'Врач'},
        {role_name: 'Пациент'},
        {role_name: 'Админ'}
    ]
)

Price.delete_all
Price.reset_pk_sequence
Price.create(
    [
        {price_name: 'Осмотр-консультация', price: 625, departament_id: 5},
        {price_name: 'Диагностическое обследование с составлением плана лечения', price: 5200, departament_id: 5},
        {price_name: 'Снятие слепков и отливка гипсовых (альгинат) моделей', price: 1000, departament_id: 5},
        {price_name: 'Снятие слепков под брекет-систему Incoqnito', price: 3500, departament_id: 5},
        {price_name: 'Контрольный осмотр (без активации аппаратов)', price: 250, departament_id: 5},
        {price_name: 'Избирательное пришлифовывание молочного зуба', price: 200, departament_id: 5},
        {price_name: 'Полный курс лечения на (лигатурной) металлической брекет – системе -1 челюсть', price: 67000, departament_id: 5},
        {price_name: 'Полный курс лечения на металлической саморегулирующей брекет – системе Damon Q - 1 челюсть', price: 75000, departament_id: 5},
        {price_name: 'Полный курс лечения на (лигатурной) керамической, сапфировой брекет – системе Inspire, Clarity) - 1 челюсть', price: 85000, departament_id: 5},
        {price_name: 'Полный курс лечения на керамической саморегулирующей брекет – системе Damon Clear- 1 челюсть', price: 95000, departament_id: 5},
        {price_name: 'Полный курс лечения на брекет – системе Incoqnito- 1 челюсть', price: 250000, departament_id: 5},
        {price_name: 'Полный курс лечения на прозрачных каппах (Star Smile) - 1 челюсть', price: 150000, departament_id: 5},
        {price_name: 'Полный курс лечения на лингвальной брекет – системе WIN – 1 челюсть', price: 200000, departament_id: 5},
        {price_name: 'Фиксация лингвальной брекет – системы WIN - 1 челюсть', price: 100000, departament_id: 5},
        {price_name: 'Фиксация металлической брекет – системы (лигатурная) (ORMCO, 3M ) - 1 челюсть', price: 25900, departament_id: 5},
        {price_name: 'Фиксация металлической саморегулирующей брекет – системе Damon Q - 1 челюсть', price: 33000, departament_id: 5},
        {price_name: 'Фиксация керамической, сапфировой брекет-системы (ORMCO, 3М) -1 челюсть', price: 38900, departament_id: 5},
        {price_name: 'Фиксация керамической саморегулирующей брекет – системы Damon Clear - 1 челюсть', price: 45000, departament_id: 5},
        {price_name: 'Фиксация лингвальной брекет – системы Incoqnito - 1 челюсть', price: 180000, departament_id: 5},
        {price_name: 'Изготовление и припасовка прозрачных капп', price: 110000, departament_id: 5},
        {price_name: 'Активация капп', price: 3800, departament_id: 5},
        {price_name: 'Активация вестибулярной брекет-системы – 1 челюсть', price: 1800, departament_id: 5},
        {price_name: 'Активация лингвальной брекет-системы - 1 челюсть', price: 3000, departament_id: 5},
        {price_name: 'Активация лингвальной брекет-системы - 2 челюсти', price: 5000, departament_id: 5},
        {price_name: 'Замена брекета металлического', price: 1200, departament_id: 5},
        {price_name: 'Замена брекета Damon Q', price: 1500, departament_id: 5},
        {price_name: 'Замена эстетического брекета', price: 1700, departament_id: 5},
        {price_name: 'Замена брекета Damon Clear', price: 2200, departament_id: 5},
        {price_name: 'Фиксация ортодонтического элемента, установленного вне клиники', price: 2600, departament_id: 5},
        {price_name: 'Изготовление и припасовка аппарата Дерихсвайлера, Хааса', price: 19800, departament_id: 5},
        {price_name: 'Лицевая маска', price: 18000, departament_id: 5},
        {price_name: 'Изготовление и постановка небного бюгеля/лингвальной дуги', price: 7800, departament_id: 5},
        {price_name: 'Постановка пружины для выравнивания моляров', price: 3800, departament_id: 5},
        {price_name: 'Аппарат Forsus', price: 17000, departament_id: 5},
        {price_name: 'Аппарат Nance', price: 5600, departament_id: 5},
        {price_name: 'Кнопка Mini-Mold 1шт.', price: 700, departament_id: 5},
        {price_name: 'Накусочный брекет', price: 2200, departament_id: 5},
        {price_name: 'Кнопка лингвальная', price: 1000, departament_id: 5},
        {price_name: 'Применение одного миниимпланта в ортодонтическом лечении', price: 5000, departament_id: 5},
        {price_name: 'Активация тяг к миниимплантам', price: 1000, departament_id: 5},
        {price_name: 'Снятие брекета вестибулярного (1 зуб)', price: 400, departament_id: 5},
        {price_name: 'Снятие брекета лингвального (1 зуб)', price: 630, departament_id: 5},
        {price_name: 'Фиксация ретейнера к 1 зубу', price: 1100, departament_id: 5},
        {price_name: 'Снятие ретейнера с 1 зуба', price: 900, departament_id: 5},
        {price_name: 'Съёмный OSAMU- ретейнер', price: 9700, departament_id: 5},
        {price_name: 'Съёмный HOWLEY - ретейнер', price: 12500, departament_id: 5},
        {price_name: 'Изготовление и припасовка одночелюстного аппарата', price: 16700, departament_id: 5},
        {price_name: 'Изготовление и припасовка двучелюстного аппарата', price: 22500, departament_id: 5},
        {price_name: 'Активация одночелюстного аппарата', price: 800, departament_id: 5},
        {price_name: 'Активация двучелюстного аппарата', price: 800, departament_id: 5},
        {price_name: 'Профилактический протез (съемный)', price: 12800, departament_id: 5},
        {price_name: 'Осмотр-консультация', price: 625, departament_id: 11},
        {price_name: 'Профилактическая гигиена в области импланта', price: 630, departament_id: 11},
        {price_name: 'Профессиональное отбеливание (Luma-Arch)', price: 14700, departament_id: 11},
        {price_name: 'Снятие зубных отложений', price: 84, departament_id: 11},
        {price_name: 'Снятие налета аппаратом "Prophyflex"', price: 84, departament_id: 11},
        {price_name: 'Покрытие фторлаком однократное', price: 42, departament_id: 11},
        {price_name: 'Подбор средств гигиены и обучение без выдачи экземпляра', price: 420, departament_id: 11},
        {price_name: 'Обучение гигиене полости рта с выдачей экземпляров щетки', price: 534, departament_id: 11},
        {price_name: 'Индивидуальный подбор размеров ершиков с выдачей экземпляров', price: 766, departament_id: 11},
        {price_name: 'Использование профессиональной фтористой системы', price: 2940, departament_id: 11},
        {price_name: 'Отбеливающая система «Opalescence TresWhite', price: 7378, departament_id: 11},
        {price_name: 'Ирригатор WaterPik – 100E Ultra', price: 11150, departament_id: 11},
        {price_name: 'Портативный Ирригатор WaterPik – 360E (дорожный)', price: 7500, departament_id: 11},
        {price_name: 'Обучение гигиене полости рта с выдачей жидкости для полоскания', price: 851, departament_id: 11},
        {price_name: 'Профессиональная чистка полости рта с использованием порошка Clinpro Prophy Powder', price: 5108, departament_id: 11},
        {price_name: 'Применение абразивной (полировочной) пасты Clinpro Prophy Paste', price: 114, departament_id: 11},
        {price_name: 'Применение фторсодержащего покрытия с трикальцийфосфатом Clinpro Prophy Varnish', price: 568, departament_id: 11},
        {price_name: 'Применение материала с выделением фтора для длительной защиты зубов Clinpro XT Varnish (за 1 зуб)', price: 170, departament_id: 11},
        {price_name: 'Применение фиссурного герметика Clinpro Sealant при герметизации фиссур у детей', price: 1476, departament_id: 11},
        {price_name: 'Обучение гигиене полости рта с выдачей экземпляра зубной пасты Clinpro Tooth Creme', price: 454, departament_id: 11},
        {price_name: 'Осмотр-консультация', price: 625, departament_id: 6},
        {price_name: 'Лечение кариеса временного зуба', price: 3349, departament_id: 6},
        {price_name: 'Лечение пульпита временного зуба в одно посещение', price: 5108, departament_id: 6},
        {price_name: 'Лечение пульпита временного зуба - первое посещение', price: 1703, departament_id: 6},
        {price_name: 'Лечение пульпита временного зуба – второе посещение', price: 3405, departament_id: 6},
        {price_name: 'Отсроченное лечение кариеса постоянного зуба (1 этап)', price: 2838, departament_id: 6},
        {price_name: 'Удаление временного зуба (простое)', price: 1260, departament_id: 6},
        {price_name: 'Удаление временного зуба (сложное)', price: 2838, departament_id: 6},
        {price_name: 'Герметизация фиссур одного зуба (неинвазивная методика)', price: 1135, departament_id: 6},
        {price_name: 'Герметизация фиссур одного зуба (инвазивная методика)', price: 1476, departament_id: 6},
        {price_name: 'Серебрение одного зуба', price: 284, departament_id: 6},
        {price_name: 'Комплекс лечебно – профилактических мероприятий детям до 14 лет', price: 2270, departament_id: 6},
        {price_name: 'Урок гигиены', price: 511, departament_id: 6},
        {price_name: 'Профилактическая программа Dental Resources', price: 1703, departament_id: 6},
        {price_name: 'Реминерализующая терапия (за 1 зуб)', price: 56, departament_id: 6},
        {price_name: 'Оформление справки (для постоянных пациентов клиники)', price: 284, departament_id: 6},
        {price_name: 'Лечение под общей анестезией кариеса временного зуба', price: 2838, departament_id: 6},
        {price_name: 'Лечение под общей анестезией пульпита временного зуба', price: 3973, departament_id: 6},
        {price_name: 'Удаление под общей анестезией временного зуба', price: 1249, departament_id: 6},
        {price_name: 'Осмотр-консультация', price: 625, departament_id: 3},
        {price_name: 'Имплантат Astra Tech', price: 41920, departament_id: 3},
        {price_name: 'Имплантат Direct', price: 34540, departament_id: 3},
        {price_name: 'Имплантат Replace', price: 38821, departament_id: 3},
        {price_name: 'Имплантат Ankylos', price: 40552, departament_id: 3},
        {price_name: 'Имплантат OSSTEM', price: 14500, departament_id: 3},
        {price_name: 'Установка ФДМ', price: 2951, departament_id: 3},
        {price_name: 'Синуслифтинг закрытый', price: 20580, departament_id: 3},
        {price_name: 'Синуслифтинг открытый', price: 27300, departament_id: 3},
        {price_name: 'Материал Bio – oss, 1 флакон', price: 10500, departament_id: 3},
        {price_name: 'Пересадка кости', price: 22249, departament_id: 3},
        {price_name: 'Подсадка костной ткани методом направленной тканевой регенерации', price: 28151, departament_id: 3},
        {price_name: 'Удаление простое', price: 1181, departament_id: 3},
        {price_name: 'Удаление сложное', price: 1680, departament_id: 3},
        {price_name: 'Удаление зуба атравматичное', price: 1975, departament_id: 3},
        {price_name: 'Удаление ретинированного зуба', price: 2940, departament_id: 3},
        {price_name: 'Резекция однокорневого зуба', price: 3360, departament_id: 3},
        {price_name: 'Резекция трехкорневого зуба', price: 5040, departament_id: 3},
        {price_name: 'Кюретаж лунки', price: 420, departament_id: 3},
        {price_name: 'Внутриротовой разрез', price: 681, departament_id: 3},
        {price_name: 'Остеотропные (или медикаментозные средства)', price: 420, departament_id: 3},
        {price_name: 'Гемисекция', price: 4200, departament_id: 3},
        {price_name: 'Коррекция альвеолярного гребня', price: 1476, departament_id: 3},
        {price_name: 'Вскрытие пародонтального абсцесса', price: 681, departament_id: 3},
        {price_name: 'Удаление пластинчатого имплантата', price: 7560, departament_id: 3},
        {price_name: 'Удаление винтового имплантата', price: 5040, departament_id: 3},
        {price_name: 'Установка миниимпланта', price: 5676, departament_id: 3},
        {price_name: 'Визуализация', price: 3065, departament_id: 3},
        {price_name: 'Расщепление альвеолярного гребня', price: 9649, departament_id: 3},
        {price_name: 'Эстетическое удлинение коронковой части зуба (в области одного зуба)', price: 7038, departament_id: 3},
        {price_name: 'Швы викрил Нить Супрамид', price: 410, departament_id: 3},
        {price_name: 'Иссечение капюшона', price: 2500, departament_id: 3},
        {price_name: 'Хирургический шаблон Nobel Guide до 5 имплантов', price: 25700, departament_id: 3},
        {price_name: 'Хирургический шаблон Nobel Guide более 5 имплантов', price: 29700, departament_id: 3},
        {price_name: 'Хирургический шаблон Nobel Guide 2G', price: 15800, departament_id: 3},
        {price_name: 'Закрытие ороантрального сообщения после удаления (ОАС)', price: 5000, departament_id: 3},
        {price_name: 'Использование инструмента для удаления имплантата', price: 3000, departament_id: 3},
        {price_name: 'Швы кетгут', price: 136, departament_id: 3},
        {price_name: 'Осмотр-консультация', price: 625, departament_id: 1},
        {price_name: 'Подкладка лечебная', price: 284, departament_id: 1},
        {price_name: 'Подкладка изолирующая СИЦ', price: 511, departament_id: 1},
        {price_name: 'Подкладка из цемента тройного отверждения (Витремер)', price: 795, departament_id: 1},
        {price_name: 'Подкладка из жидкотекучего композита', price: 795, departament_id: 1},
        {price_name: 'Подкладка из компомера', price: 851, departament_id: 1},
        {price_name: 'Стеклоиономерным цементом восстановление одной поверхности зуба', price: 851, departament_id: 1},
        {price_name: 'Светоотверждаемым композитом восстановление одной поверхности зуба', price: 1476, departament_id: 1},
        {price_name: 'Восстановление 1 поверхности зуба цементом тройного отверждения', price: 1260, departament_id: 1},
        {price_name: 'Восстановление пришеечной области зуба', price: 2157, departament_id: 1},
        {price_name: 'Неинвазивный метод лечения кариеса', price: 2838, departament_id: 1},
        {price_name: 'Покрытие реставрации лаком', price: 126, departament_id: 1},
        {price_name: 'Наложение девитализирующей пасты', price: 454, departament_id: 1},
        {price_name: 'ММО канала одноканального зуба (первый визит)', price: 2838, departament_id: 1},
        {price_name: 'ММО одного канала многоканального зуба (первый визит)', price: 1703, departament_id: 1},
        {price_name: 'ММО канала (повторный визит)', price: 1135, departament_id: 1},
        {price_name: 'Пломбирование канала временным герметиком (1 канал)', price: 568, departament_id: 1},
        {price_name: 'Наложение лекарственных повязок', price: 397, departament_id: 1},
        {price_name: 'Распломбировка простая', price: 1362, departament_id: 1},
        {price_name: 'Распломбировка сложная', price: 2610, departament_id: 1},
        {price_name: 'Распломбировка стекловолокна', price: 2838, departament_id: 1},
        {price_name: 'Извлечение инородного тела из канала зуба', price: 1260, departament_id: 1},
        {price_name: 'Извлечение анкерного штифта из канала зуба', price: 1703, departament_id: 1},
        {price_name: 'Извлечение вкв из канала зуба', price: 2838, departament_id: 1},
        {price_name: '1 канала пломбировка гуттаперчей', price: 2838, departament_id: 1},
        {price_name: '1 канала пломбировка методом вертикальной конденсации', price: 3746, departament_id: 1},
        {price_name: '2-х каналов пломбировка гуттаперчей', price: 3746, departament_id: 1},
        {price_name: '2-х каналов пломбировка методом вертикальной конденсации', price: 4541, departament_id: 1},
        {price_name: '3-х каналов пломбировка гуттаперчей', price: 4541, departament_id: 1},
        {price_name: '3-х каналов пломбировка методом вертикальной конденсации', price: 5449, departament_id: 1},
        {price_name: '4-х каналов пломбировка гуттаперчей', price: 5449, departament_id: 1},
        {price_name: '4-х каналов пломбировка методом вертикальной конденсации', price: 5676, departament_id: 1},
        {price_name: 'Штифт гуттаперчевый (1 шт.)', price: 40, departament_id: 1},
        {price_name: 'Повторное посещение при лечении периодонтита', price: 454, departament_id: 1},
        {price_name: 'Стекловолоконный штифт армирование', price: 851, departament_id: 1},
        {price_name: 'Микропротезирование с использованием стекловолокна (1 ед.)', price: 8190, departament_id: 1},
        {price_name: 'Фиксация штифта на цемент двойного отверждения', price: 795, departament_id: 1},
        {price_name: 'Подкладка из материала Про Рут', price: 1476, departament_id: 1},
        {price_name: 'Компьютерная диагностика', price: 284, departament_id: 7},
        {price_name: 'Компьютерная диагностика с распечаткой', price: 341, departament_id: 7},
        {price_name: 'Ортопантомограмма с распечаткой', price: 851, departament_id: 7},
        {price_name: 'Ортопантомограмма без распечатки', price: 795, departament_id: 7},
        {price_name: 'Трехмерное рентгенологическое исследования области размером 23*17', price: 2700, departament_id: 7},
        {price_name: 'Трехмерное рентгенологическое исследования одной челюсти', price: 1800, departament_id: 7},
        {price_name: 'Трехмерное рентгенологическое исследования двух челюстей', price: 2400, departament_id: 7},
        {price_name: 'Осмотр-консультация', price: 625, departament_id: 4},
        {price_name: 'Пародонтический скейлинг (1 зуб)', price: 284, departament_id: 4},
        {price_name: 'Закрытый кюретаж за 1 ед.', price: 2497, departament_id: 4},
        {price_name: 'Открытый кюретаж за 1 ед.', price: 3746, departament_id: 4},
        {price_name: 'Френулопластика', price: 4768, departament_id: 4},
        {price_name: 'Вестибулопластика', price: 9592, departament_id: 4},
        {price_name: 'Гингивэктомия', price: 1362, departament_id: 4},
        {price_name: 'Лоскутная операция при пародонтите (1 сегмент до 6 зубов)', price: 10784, departament_id: 4},
        {price_name: 'Применение резорбируемой мембраны Bio-Gide', price: 11350, departament_id: 4},
        {price_name: 'Применение остеотропного препарата Bio-Oss collagen', price: 8700, departament_id: 4},
        {price_name: 'Применение остеотропного препарата Bio-Oss spongiosa 0,5', price: 7750, departament_id: 4},
        {price_name: 'Избирательная пришлифовка зубов по методу Дженкельсона (1 посещение)', price: 2270, departament_id: 4},
        {price_name: 'Удлинение коронковой части зуба', price: 4484, departament_id: 4},
        {price_name: 'Наращивание альвеолярного гребня с использованием мягких тканей', price: 9649, departament_id: 4},
        {price_name: 'Пластика рецессии десны местными тканями (в области 1 зуба)', price: 5108, departament_id: 4},
        {price_name: 'Применение Mucograft, Mucoderm', price: 17850, departament_id: 4},
        {price_name: 'Пародонтальная повязка', price: 580, departament_id: 4},
        {price_name: 'Медикаментозная обработка полости рта', price: 341, departament_id: 4},
        {price_name: 'Шинирование стекловолокном (1 зуб)', price: 1992, departament_id: 4},
        {price_name: 'Пластика десны свободным трансплататом', price: 9081, departament_id: 4},
        {price_name: 'Применение резорбируемой мембраны Bio-Gide 30*40мм', price: 26200, departament_id: 4},
        {price_name: 'Применение резорбируемой мембраны Bio-Gide 25*25мм', price: 17000, departament_id: 4},
        {price_name: 'Пин «Meizinger» (за 1 единицу)', price: 2100, departament_id: 4},
        {price_name: 'Изъятие костного блока (костная стружка)', price: 12500, departament_id: 4},
        {price_name: '«Консервация» лунки удаленного зуба', price: 10000, departament_id: 4},
        {price_name: 'Швы (нерассасывающиеся)', price: 1700, departament_id: 4},
        {price_name: 'Удаление ретинированного третьего моляра под общей анестезией', price: 12000, departament_id: 4},
    ]
)

Filials_Medic.delete_all
Filials_Medic.reset_pk_sequence
Filials_Medic.create(
    [
        {medic_id: 1, filial_id: 1},#Агаджанян
        {medic_id: 1, filial_id: 2},
        {medic_id: 1, filial_id: 3},
        {medic_id: 2, filial_id: 1},#Жигунова
        {medic_id: 3, filial_id: 1},#Дубинская
        {medic_id: 4, filial_id: 1},#Окунева
        {medic_id: 4, filial_id: 2},
        {medic_id: 4, filial_id: 3},
        {medic_id: 5, filial_id: 1},#Иванина
        {medic_id: 6, filial_id: 1},#Тиханова
        {medic_id: 7, filial_id: 1},#Царькова
        {medic_id: 8, filial_id: 1},#Филина
        {medic_id: 8, filial_id: 3},
        {medic_id: 9, filial_id: 1},#Окунев
        {medic_id: 9, filial_id: 3},
        {medic_id: 10, filial_id: 1},#Конищев
        {medic_id: 10, filial_id: 2},
        {medic_id: 10, filial_id: 3},
        {medic_id: 11, filial_id: 1},#Щеникова
        {medic_id: 12, filial_id: 1},#Орлов
        {medic_id: 13, filial_id: 2},#Батюкова
        {medic_id: 14, filial_id: 2},#Белолюбская
        {medic_id: 15, filial_id: 2},#Животовская
        {medic_id: 16, filial_id: 2},#Захарченко
        {medic_id: 17, filial_id: 2},#Комарова
        {medic_id: 18, filial_id: 2},#Самсонов
        {medic_id: 19, filial_id: 2},#Калищук
        {medic_id: 20, filial_id: 2},#Кобалия
        {medic_id: 21, filial_id: 2},#Голубева
        {medic_id: 22, filial_id: 2},#Савинкина
        {medic_id: 23, filial_id: 2},#Максимов
        {medic_id: 24, filial_id: 3},#Оношко
        {medic_id: 25, filial_id: 3},#Шашорина
        {medic_id: 26, filial_id: 3},#Шаматова
        {medic_id: 27, filial_id: 3},#Сладков
        {medic_id: 28, filial_id: 3},#Петрашень
        {medic_id: 29, filial_id: 3},#Сапицкая
        {medic_id: 30, filial_id: 3},#Соколова
        {medic_id: 31, filial_id: 3},#Листопад
    ]
)

Departaments_Medic.delete_all
Departaments_Medic.reset_pk_sequence
Departaments_Medic.create(
    [
        {medic_id: 1, departament_id: 8},#Агаджанян
        {medic_id: 2, departament_id: 1},#Жигунова
        {medic_id: 2, departament_id: 4},
        {medic_id: 3, departament_id: 1},#Дубинская
        {medic_id: 3, departament_id: 6},
        {medic_id: 4, departament_id: 5},#Окунева
        {medic_id: 5, departament_id: 1},#Иванина
        {medic_id: 6, departament_id: 1},#Тиханова
        {medic_id: 6, departament_id: 6},
        {medic_id: 7, departament_id: 1},#Царькова
        {medic_id: 8, departament_id: 1},#Филина
        {medic_id: 9, departament_id: 8},#Окунев
        {medic_id: 10, departament_id: 3},#Конищев
        {medic_id: 10, departament_id: 8},
        {medic_id: 11, departament_id: 1},#Щеникова
        {medic_id: 12, departament_id: 3},#Орлов
        {medic_id: 12, departament_id: 8},
        {medic_id: 13, departament_id: 1},#Батюкова
        {medic_id: 13, departament_id: 6},
        {medic_id: 14, departament_id: 1},#Белолюбская
        {medic_id: 14, departament_id: 6},
        {medic_id: 15, departament_id: 1},#Животовская
        {medic_id: 15, departament_id: 4},
        {medic_id: 16, departament_id: 1},#Захарченко
        {medic_id: 17, departament_id: 1},#Комарова
        {medic_id: 17, departament_id: 6},
        {medic_id: 18, departament_id: 8},#Самсонов
        {medic_id: 19, departament_id: 3},#Калищук
        {medic_id: 19, departament_id: 4},
        {medic_id: 20, departament_id: 3},#Кобалия
        {medic_id: 20, departament_id: 8},
        {medic_id: 21, departament_id: 1},#Голубева
        {medic_id: 22, departament_id: 1},#Савинкина
        {medic_id: 23, departament_id: 8},#Максимов
        {medic_id: 24, departament_id: 5},#Оношко
        {medic_id: 25, departament_id: 1},#Шашорина
        {medic_id: 26, departament_id: 6},#Шаматова
        {medic_id: 27, departament_id: 3},#Сладков
        {medic_id: 27, departament_id: 4},
        {medic_id: 28, departament_id: 5},#Петрашень
        {medic_id: 29, departament_id: 5},#Сапицкая
        {medic_id: 30, departament_id: 6},#Соколова
        {medic_id: 31, departament_id: 1},#Листопад
    ]
)

Patient.delete_all
Patient.reset_pk_sequence
Patient.create(
    [
        {
            user_id: 32,
            tel_number: 79110810557,
            foto: ''
        }
    ]
)


User.delete_all
User.reset_pk_sequence
User.create(
    [
        {
            user_name: 'Эмиль',
            surname: 'Агаджанян',
            patronymic: 'Гургенович',
            email: 'test@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Светлана',
            surname: 'Жигунова',
            patronymic: 'Юрьевна',
            email: 'test2@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Анна',
            surname: 'Дубинская',
            patronymic: 'Яковлевна',
            email: 'test3@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Татьяна',
            surname: 'Окунева',
            patronymic: 'Юрьевна',
            email: 'test4@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Вера',
            surname: 'Иванина',
            patronymic: 'Рашидовна',
            email: 'test5@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Алла',
            surname: 'Тиханова',
            patronymic: 'Михайловна',
            email: 'test6@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Татьяна',
            surname: 'Царькова',
            patronymic: 'Владимировна',
            email: 'test7@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Ольга',
            surname: 'Филина',
            patronymic: 'Викторовна',
            email: 'test8@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Павел',
            surname: 'Окунев',
            patronymic: 'Юрьевич',
            email: 'test9@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Виталий',
            surname: 'Конищев',
            patronymic: 'Константинович',
            email: 'test10@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Александра',
            surname: 'Щеникова',
            patronymic: 'Евгеньевна',
            email: 'test11@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Петр',
            surname: 'Орлов',
            patronymic: 'Николаевич',
            email: 'test12@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Оксана',
            surname: 'Батюкова',
            patronymic: 'Ивановна',
            email: 'test13@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Светлана',
            surname: 'Белолюбская',
            patronymic: 'Викторовна',
            email: 'test14@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Нина',
            surname: 'Животовская',
            patronymic: 'Артуровна',
            email: 'test15@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Ольга',
            surname: 'Захарченко',
            patronymic: 'Владимировна',
            email: 'test16@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Елена',
            surname: 'Комарова',
            patronymic: 'Валерьевна',
            email: 'test17@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Денис',
            surname: 'Самсонов',
            patronymic: 'Владимирович',
            email: 'test18@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Константин',
            surname: 'Калищук',
            patronymic: 'Вячеславович',
            email: 'test19@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Васо',
            surname: 'Кобалия',
            patronymic: 'Мерабович',
            email: 'test20@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Анастасия',
            surname: 'Голубева',
            patronymic: 'Анатольевна',
            email: 'test21@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Екатерина',
            surname: 'Савинкина',
            patronymic: 'Викторовна',
            email: 'test22@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Михаил',
            surname: 'Максимов',
            patronymic: 'Михайлович',
            email: 'test23@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Ольга',
            surname: 'Оношко',
            patronymic: 'Михайловна',
            email: 'test24@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Дарина',
            surname: 'Шашорина',
            patronymic: 'Геннадьевна',
            email: 'test25@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Хатиа',
            surname: 'Шаматава',
            patronymic: 'Отариевна',
            email: 'test26@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Сергей',
            surname: 'Сладков',
            patronymic: 'Николаевич',
            email: 'test27@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Анастасия',
            surname: 'Петрашень',
            patronymic: 'Викторовна',
            email: 'test28@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Александра',
            surname: 'Сапицкая',
            patronymic: 'Игоревна',
            email: 'test29@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Елена',
            surname: 'Соколова',
            patronymic: 'Борисовна',
            email: 'test30@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Ирина',
            surname: 'Листопад',
            patronymic: 'Владимировна',
            email: 'test31@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 1
        },
        {
            user_name: 'Денис',
            surname: 'Рябченко',
            patronymic: 'Михайлович',
            email: 'test32@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 3,
            admin: true
        },
        {
            user_name: 'Валерия',
            surname: 'Рябченко',
            patronymic: 'Игоревна',
            email: 'test33@test.com',
            password: 'qwerty',
            password_confirmation: 'qwerty',
            role_id: 2
        },

    ]
)

Medic.delete_all
Medic.reset_pk_sequence
Medic.create(
    [
        {
             user_id: 1,
             daywork1: 'понедельник, четверг',
             daywork2: '',
             daywork3: '',
             post1: 'Генеральный директор',
             post2: 'Врач высшей категории',
             post3: 'Стоматолог-ортопед',
             foto: 'bg-doctor_m2.png',
             about: 'Член Американской Академии Косметической Стоматологии (AACD). Член Европейской Ассоциации Эстетической Стоматологии (European Academy of Esthetic Dentistry).',
             raiting: 0,
             status_medic: 1
        },
        {
            user_id: 2,
            daywork1: 'понедельник, четверг',
            daywork2: '',
            daywork3: '',
            post1: 'Главный врач',
            post2: 'Стоматолог-терапевт',
            post3: 'Пародонтолог',
            foto: 'doc_zhigunova.jpg',
            about: 'В 2004 году получила диплом врача-стоматолога в СПбГМУ им. акад. И.П. Павлова, во время прохождения интернатуры по терапевтической стоматологии одновременно прошла специализацию и по хирургической стоматологии. Затем пришла работать в нашу только что открывшуюся клинику врачом-стажером и продолжила обучение, активно принимая участие в образовательных программах. Многочисленные семинары и научно-практические конференции, проводимые мировыми лидерами стоматологической индустрии, позволили мне достаточно быстро перейти к самостоятельной работе. «Эстетические решения в стоматологии» (Чикагский центр современной стоматологии), «Простые клинические решения в комплексной эстетической реабилитации зубов» (Шульц Дентал Групп), «Современная эндодонтия для практикующего врача» (Амрита), «Повторное эндодонтическое лечение. Ультразвук в эндодонтии» (Амрита), симпозиум «Вопросы эстетической стоматологии и подготовки к реконструктивному лечению» — и это только за один год.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 3,
            daywork1: 'понедельник, вторник, четверг',
            daywork2: '',
            daywork3: '',
            post1: 'Стоматолог-терапевт',
            post2: 'Детский стоматолог',
            post3: '',
            foto: 'doc_dubin.jpg',
            about: 'В 1987 году закончила Первый медицинский институт. Неоднократно проходила курсы усовершенствования при МАПО, в учебном центре «АМФОДЕНТ», принимала участие в международных стоматологических симпозиумах. Принимала участие в создании и вела цикл телевизионных передач по детской стоматологии в программах «Большой Фестиваль» и «Дороже денег». Имеет именной сертификат по эстетической реставрации зубов, работала в элитных клиниках города.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 4,
            daywork1: 'среда, пятница',
            daywork2: 'вторник, четверг',
            daywork3: 'среда',
            post1: 'Главный врач клиники',
            post2: 'Врач высшей категории',
            post3: 'Стоматолог-ортодонт',
            foto: 'bd1.jpg',
            about: 'Окончила Санкт-Петербургский Медицинский институт им. ак. И.П. Павлова в 1994 г. По специальности стоматолог ортодонт начала работать после завершения интернатуры и ординатуры на базе МАПО. Свою специальность люблю, считаю самой интересной, очень приятно делать людей счастливыми и улыбающимися широкой, открытой улыбкой. В «Клинике Доброго Стоматолога» работаю с ее основания с 2004 г. До этого работала в других ведущих клиниках Санкт-Петербурга. Очень рада, что работаю в сплоченном коллективе профессионалов-единомышленников, многих из которых знаю уже много лет. В полном объеме владею работой на вестибулярных и лингвальных брекет-системах, на съемной аппаратуре. В клинике проводим лечение сложных случаев, требующих комплексного подхода в решении проблем (ортодонтическая подготовка к хирургической коррекции прикуса, лечение заболеваний ВНЧС, ортодонтическая подготовка к протезированию, ортодонтическое лечение пациентов с заболеваниями пародонта). Являюсь участником многих стоматологических съездов и конференций в России и за рубежом. С января 2007 года являюсь главным врачом Клиники Доброго Стоматолога и заведую ортодонтическим отделением всех трех филиалов.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 5,
            daywork1: 'среда, воскресенье',
            daywork2: '',
            daywork3: '',
            post1: 'Стоматолог-терапевт',
            post2: '',
            post3: '',
            foto: 'doc_ivanina.jpg',
            about: 'в 2003 г окончила Волгоградский Государственный Медицинский Университет. Прошла интернатуру на базе ВолГМУ по специальности "Терепевтическая стоматология" и "Ортопедическая стоматология", паралельно работала ассистентом врача-стоматолога в крупной частной клинике. С 2004 г работала в элитных клиниках СПб. Окончила курсы повышения квалификации в учебном центре Амфодент. В "Клинике Доброго Стоматолога" очень нравится комплексный подход и внимательное отношение к пациентам.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 6,
            daywork1: 'вторник, среда, пятница, суббота',
            daywork2: '',
            daywork3: '',
            post1: 'Стоматолог-терапевт',
            post2: 'Детский стоматолог',
            post3: '',
            foto: 'doc_tihan.jpg',
            about: 'Закончила 1-й ЛМИ им. Павлова в 1987 году. Врач 1-ой категории, стоматолог-терапевт, детский стоматолог. Неоднократно проходила курсы усовершенствования при МАПО, в учебном центре «Амфодент». Принимала участие в конференциях зарубежных фирм-производителей пломбировочных материалов и стоматологического оборудования. Работала в ведущих частных клиниках города.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 7,
            daywork1: 'вторник, пятница',
            daywork2: '',
            daywork3: '',
            post1: 'Стоматолог-терапевт',
            post2: '',
            post3: '',
            foto: 'doc_carkova.jpg',
            about: 'В 1999 г. окончила Санкт-Петербургский Государственный Медицинский Университет имени ак. И.П.Павлова. В 2000 г. окончила интернатуру по терапевтической стоматологии. С 2003 г. по начало 2008 работала в частной клинике. Принимала неоднократное участие в различных семинарах и мастер-классах. С начала 2008 г являюсь частью дружного коллектива «Клиники Доброго Стоматолога». Мне нравятся принципы работы клиники: комплексный подход к решению стоматологических проблем, высокий уровень специалистов, возможность работать на современном высокотехничном оборудовании качественными материалами и уважительное отношение к людям.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 8,
            daywork1: 'среда, суббота',
            daywork2: '',
            daywork3: 'четверг, пятница, воскресенье',
            post1: 'Стоматолог-терапевт',
            post2: '',
            post3: '',
            foto: 'Philina@2.jpg',
            about: 'В 2005 году окончила Харьковский Государственный Медицинский Университет. Прошла интернатуру по специальности "Терапевтическая стоматология" в МАПО, также прошла специализацию по ортопедической стоматологии в СПбГМУ им. акад. И.П. Павлова, по окончанию обучения работала в крупных сетевых клиниках города. Постоянно повышаю свой профессиональный уровень посещая различные симпозиумы, конференции и курсы усовершенствования практических навыков, чтобы предлагать пациентам самые современные и самые эффективные методы лечения. Окончила курсы повышения квалификации по программам "Современные стоматологические материалы и технологии 3M ESPE","Закономерности цветопередачи в эстетической реставрации", "Эффективные ручные и машинные технологии в эндодонтии, гарантирующие успех". Опыт специалистов "Клиники Доброго Стоматолога" и индивидуальный подход к каждому пациенту позволяет добиться прекрасных результатов в лечении.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 9,
            daywork1: 'вторник, четверг, пятница',
            daywork2: '',
            daywork3: 'среда, суббота',
            post1: 'Врач высшей категории',
            post2: 'Старший стоматолог-ортопед',
            post3: '',
            foto: 'doc_ocun.jpg',
            about: 'Окончил Санкт-Петербургский Государственный Медицинский Университет имени академика И.П. Павлова в 1999 году. Проходил интернатуру на кафедре ортопедической стоматологии СПБГМУ им. Павлова. Получил профессиональную подготовку по терапевтической и хирургической стоматологии на кафедре Военно-Медицинской академии и Санкт-Петербургского института стоматологии. Начал профессиональную стоматологическую деятельность в 1998 году. Работал в ряде ведущих стоматологических клиник города. Постоянно посещаю практические и теоретические семинары, съезды и конференции. Прохожу профессиональную переподготовку. Обладаю всеми необходимыми знаниями и навыками для оказания квалифицированной стоматологической помощи на высшем общемировом уровне. Сотрудничаю с ведущими специалистами смежных специальностей и зуботехническими лабораториями в стране и за рубежом.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 10,
            daywork1: 'понедельник',
            daywork2: 'суббота',
            daywork3: 'среда, суббота',
            post1: 'Челюстно-лицевой хирург',
            post2: 'Стоматолог-имплантолог',
            post3: '',
            foto: 'Konishev@2.jpg',
            about: 'Образование: высшее Специальность: лечебное дело, стоматология хирургическая, челюстно-лицевая хирургия, дентальная имплантация. Образование: 2000-2006 гг. Российская Военно-Медицинская Академия (г.Санкт-Петербург) 2006-2007 гг. Клиническая интернатура по общей хирургии на базе ВМедА и МАПО (г.Санкт-Петербург) 2008-2010 гг. Клиническая ординатура по Челюстно-лицевой хирургии и хирургической стоматологии с курсом пластической хирургии на базе Санкт-Петербургского государственного медицинского университета имени академика И.П.Павлова (г.Санкт-Петербург) 2012 г. Профессиональная переподготовка на базе ГБОУ ВПО СЗГМУ им. И.И.Мечникова Минздравсоцразвития России по специальности «Стоматология хирургическая». Опыт работы: с 2006 года. Любимая цитата: «Врачебное искусство может быть приобретено только в течение очень долгого времени. Только тогда оно может принести пользу людям» Гиппократ.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 11,
            daywork1: 'вторник, пятница',
            daywork2: '',
            daywork3: '',
            post1: 'Гигиенист стоматологический',
            post2: '',
            post3: '',
            foto: 'doc_shenikova.jpg',
            about: 'В 2002 году получила диплом гигиениста стоматологического. Владеет всеми методами профилактики стоматологических заболеваний. Работала в частных клиниках города Моя задача, не только проводить профилактическую гигиену полости рта 1 раз в полгода, но и обучать взрослых и детей правильному уходу за зубами. «Чистые зубы – здоровые зубы».',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 12,
            daywork1: 'вторник, среда, воскресенье',
            daywork2: '',
            daywork3: '',
            post1: 'Хирург-стоматолог',
            post2: 'Имплантолог',
            post3: '',
            foto: 'orlov.jpg',
            about: 'Стоматолог-хирург-имплантолог окончил СпбГМУ им.акад. И.П.Павлова. Проходил интернатуру на базе СПБГБУЗ Стоматологической поликлиники №8. Первичная специализация СПБМАПО «хирургическая стоматология с курсом ЧЛХ». Высококвалифицированный специалист с обширным опытом практической деятельности в стоматологической практике. Владеет основными методиками хирургической коррекции патологических процессов ротовой полости. Специализируется на импантации зубов. Занимается развитием профилактического направления в стоматологической практике, направленного на своевременное предупреждение развития осложнений основного патологического процесса. Постоянно совершенствует свой профессиональный уровень для оказания высококвалифицированной помощи своим пациентам. Регулярно принимает участие в стоматологических симпозиумах, семинарах, конференциях. Участник семинаров Nobel Biocare World, «Имплантация от А до Я» , Densplay, Ankylos , «Менеджмент мягких тканей в периимплантной зоне», «Усложненные методики имплантации», «Имплантация в эстетически значимой зоне», «Применение алло- аутотрансплантатов для платсики мягких тканей при увеличении объема десны в области рецессии десны и в периимплатной зоне», «Методика закрытого и открытого синус-лифтов с применением ауто- и ксено- материалов» и многих других. Свое призвание – «помогать людям» , Орлов Петр Николаевич, нашел в профессии стоматолога-хирурга.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 13,
            daywork1: '',
            daywork2: 'понедельник, среда, пятница, воскресенье',
            daywork3: '',
            post1: 'Стоматолог-терапевт',
            post2: 'Детский стоматолог',
            post3: '',
            foto: 'doc_batukova.jpg',
            about: 'Окончила Уральскую медицинскую академию по специальности стоматология. Работаю стоматологом-терапевтом и детским стоматологом. Окончила курсы повышения квалификации в Институте стоматологии "МЕДИ" по специальности терапевтическая стоматология и детская стоматология. Прошла обучение методикам эстетической реставрации в учебном центре «Амфодент». Добросовестна, открыта по отношению к людям, нахожу индивидуальный подход к пациентам любого возраста. В совершенстве владею всеми технологиями терапевтической и детской стоматологии. Постоянно совершенствую свои профессиональные навыки.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 14,
            daywork1: '',
            daywork2: 'среда, четверг, суббота',
            daywork3: '',
            post1: 'Стоматолог-терапевт',
            post2: 'Детский стоматолог',
            post3: '',
            foto: 'doc_belolubskaya.jpg',
            about: 'Окончила СПб Медицинский Университет им. И.П. Павлова в 1998 году. Основной специальностью была терапевтическая стоматология — как у многих выпускников стоматологического факультета. Работала в ведущих клиниках города. Через некоторое время решила расширить свою специализацию, получив сертификат по детской стоматологии (окончив трехгодичную ординатуру в МАПО). Детская стоматология, пожалуй, самая трудная и ответственная область стоматологического приема. Маленькие пациенты требуют от врача, кроме высочайшего профессионализма, бесконечного терпения и доброты. Они, как никто другой, нуждаются в добром слове, улыбке — и, как никто другой, умеют быть благодарными. Каждый день приходится делать все возможное, чтобы малыши не боялись стоматологов, чтобы новое поколение посещало врача не по принуждению, а с удовольствием. Продолжаю вести и взрослый прием. Много времени посвящаю изучению современных технологий в терапевтической и детской стоматологии. Получены сертификаты по обучению в Институте Стоматологии МЕДИ, компаниях Амфодент, Дентсплай. С гордостью могу сказать, что признана лучшим специалистом по профилактике стоматологических заболеваний компании Oral-B за 2006 год в Санкт-Петербурге.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 15,
            daywork1: '',
            daywork2: 'понедельник, среда',
            daywork3: '',
            post1: 'Стоматолог- терапевт',
            post2: 'Пародонтолог',
            post3: '',
            foto: 'doc_zhivotovskaya.jpg',
            about: 'То, что стоматология — мое призвание, я поняла не сразу. По своему первому образованию я — микробиолог. Окончила биологический факультет СПбГУ в 1995 году. Потом был 1-ый ЛМИ им. ак. И.П. Павлова, интернатура. И вот, с 2001 года я — врач-стоматолог, о чем ни секунды не пожалела. Сейчас я уже не представляю, как можно заниматься чем-то другим. Мне очень повезло с учителями, и я до сих пор не стесняюсь обращаться к ним за советом. Я люблю учиться; постоянно посещаю лекции, семинары, практические конференции. За годы работы прослушала множество курсов и мастер-классов в учебных центрах Амфодент, СПбИС Меди, 3М ЕSPE по эстетической реставрации, современной эндодонтии, консервативной и хирургической пародонтологии. Я очень люблю свою работу и надеюсь, что результаты не разочаруют наших пациентов.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 16,
            daywork1: '',
            daywork2: 'вторник, среда, пятница, суббота',
            daywork3: '',
            post1: 'Стоматолог-терапевт',
            post2: '',
            post3: '',
            foto: 'doc_zaharchenko.jpg',
            about: 'В 2000 году окончила Минский Государственный медицинский институт, затем проходила стажировку по специальности «врач-стоматолог». В 2002 году обучалась на курсах повышения квалификации на базе Санкт-Петербургского Государственного Медицинского Университета им. акад. И.П.Павлова — «Актуальные вопросы современной терапевтичекой стоматологии». Участвовала в семинарах учебного центра «Амфодент», ЦНИИС, компании «Амрита».',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 17,
            daywork1: '',
            daywork2: 'понедельник, вторник, четверг, воскресенье',
            daywork3: '',
            post1: 'Стоматолог-терапевт',
            post2: 'Детский стоматолог',
            post3: '',
            foto: 'doc_komarova.jpg',
            about: 'Окончила Уральскую медицинскую академию по специальности стоматология. За 17 лет работы врачом-стоматологом поняла на сколько ответственную и в то же время интересную работу выбрала в жизни. Много времени уделяю повышению своей квалификации на курсах в учебных центрах «Амфодент», «3М Espe», СПбИС «Меди», семинарах и научно-практических конференциях. Стоматология-это мое призвание, приятно делать людей улыбающимися и счастливыми.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 18,
            daywork1: '',
            daywork2: 'понедельник, среда, четверг, воскресенье',
            daywork3: '',
            post1: 'Стоматолог-ортопед',
            post2: '',
            post3: '',
            foto: 'samsonov.jpg',
            about: 'Окончил СГМУ им.В.И.Разумовского, проходил интернатуру и первичную специализацию на базе СПбГМУ им.акад.И.П.Павлова по специальности ортопедическая стоматология. Начало профессиональной деятельности с 2007г. Постоянное обучение и развитие на курсах повышения квалификации, семинарах, конференциях.Основные направления в работе: протезирование в сложных клинических условиях, комплексный подход, протезирование при полном отсутствии зубов, эстетическое протезирование. Грамотный, ответственный специалист, относящийся с особым вниманием к каждому пациенту.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 19,
            daywork1: '',
            daywork2: 'четверг',
            daywork3: '',
            post1: 'Стоматолог-хирург',
            post2: 'Пародонтолог',
            post3: '',
            foto: 'kalishyk.jpg',
            about: 'Закончил КГМА в 2000году. Специализация: хирургия, пародонтология (консервативная и хирургическая).',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 20,
            daywork1: '',
            daywork2: 'понедельник, среда, четверг, суббота',
            daywork3: '',
            post1: 'Стоматолог-хирург',
            post2: 'Имплантолог',
            post3: '',
            foto: 'doc_kobaliya_new.jpg',
            about: 'Окончил Санкт-Петербургский Государственный Медицинский Университет им. академика И.П.Павлова. Интернатуру проходил в МАПО на базе клиник "Стома". Участник конференции Nobel Bioсare World Tour 2007, Nobel Biocare Road Show 2008. Специалист высокого класса, блестяще справляющийся с хирургическими операциями любой сложности. Всю свою работу выполняет очень ответственно и аккуратно.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 21,
            daywork1: '',
            daywork2: 'вторник, четверг, суббота',
            daywork3: '',
            post1: 'Гигиенист стоматологический',
            post2: '',
            post3: '',
            foto: 'golubeva.jpg',
            about: 'В 2002 году закончила 3-й медицинский колледж по специальности «профилактическая стоматология». Владеет методами профилактики стоматологических заболеваний, проведения профессиональной гигиены ручным и аппаратным методами, проведения профессиональной гигиены имплантатов, методами подбора индивидуальных программ профилактики. «Главное для меня в работе – видеть довольного пациента и самой получать удовлетворение от качественно выполненной работы. Доброжелательный и спокойный характер помогает мне найти к каждому индивидуальный подход, основанный на уважении и внимательном отношении. Стараюсь в профессиональном плане идти в ногу со временем, постоянно совершенствуясь».',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 22,
            daywork1: '',
            daywork2: 'пятница, воскресенье',
            daywork3: '',
            post1: 'Гигиенист стоматологический',
            post2: '',
            post3: '',
            foto: 'doc_savinkina.jpg',
            about: 'В 2003 году получила диплом гигиениста стоматологического. Во время учебы работала в ведущих клиниках города ассистентом стоматолога-терапевта, хирурга, пародонтолога, ортопеда. Полученный опыт помогает не только провести профессиональную гигиену, подобрать средства для ухода за полостью рта, но и сориентировать пациента на дальнейшее лечение у других специалистов. Очень люблю свою работу — делать улыбку пациентов белоснежной!!!',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 23,
            daywork1: '',
            daywork2: 'вторник, суббота',
            daywork3: '',
            post1: 'Стоматолог-ортопед',
            post2: '',
            post3: '',
            foto: 'maksimov.jpg',
            about: 'Образование: СПбГМУ 1998г., Врач-стоматолог терапевт 1998-2002гг., Врач-стоматолог ортопед с 2002 г. Регулярно повышаю квалификацию на курсах, семинарах и других образовательных мероприятиях для стоматологов-ортопедов и имплантологов, в том числе в Германии и в США. Владею всеми современными методиками ортопедического лечения, убежденный сторонник протезирования на имплантатах и гуманного бережного отношения к зубам. Активно использую в своей практике цифровые стоматологические технологии и новейшие биосовместимые материалы.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 24,
            daywork1: '',
            daywork2: '',
            daywork3: 'среда, четверг',
            post1: 'Старший врач клиники',
            post2: 'Стоматолог-ортодонт',
            post3: '',
            foto: 'onoshko.jpg',
            about: 'Ещё до поступления в СПб Государственный Медицинский Университет им.академика И.П.Павлова я мечтала стать именно ортодонтом – врачом, на мой взгляд,меняющим жизнь людей и делающим их более счастливыми. За плечами насыщенные, сложные, но очень интересные годы жизни – учеба в университете, на 2-ом курсе которого я уже начала работать с Окуневой Т.Ю., интернатура, ординатура на базе СПб МАПО под руководством Силина А.В. и,конечно же,работа в нашем дружном коллективе Клиники Доброго Стоматолога с 2005 года. Я люблю свою профессию и считаю, что врач должен учиться всю жизнь, поэтому постоянно посещаю семинары,научные конференции и съезды российского и международного уровня. Улыбка дарит окружающим нас людям чуточку тепла, которого нам так не хватает. Я наблюдала за преображением пациентов после ортодонтического лечения в течение многих лет и пришла к интересному выводу: открытая добродушная улыбка обладает уникальным свойством – делает людей более успешными и счастливыми.Что, в свою очередь, делает счастливее нас!',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 25,
            daywork1: '',
            daywork2: '',
            daywork3: 'среда, суббота',
            post1: 'Стоматолог-терапевт',
            post2: '',
            post3: '',
            foto: 'Shashorina@2.jpg',
            about: 'Окончила Санкт - Петербургский Медицинский Университет им. И.П.Павлова в 1999 году. Проходила интернатуру и клиническую ординатуру на кафедре терапевтической стоматологии университета им.И.П.Павлова. Член Научного Общества Стоматологии Санкт-Петербурга и Стоматологической Ассоциации России. Стаж 17 лет. В своей работе всегда стремлюсь к результату, который будет превосходить ожидания пациента. Забочусь о его комфорте и спокойствии. Профессионализм, опыт и использование современных технологий помогают мне в выборе методики лечения индивидуально для каждого пациента.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 26,
            daywork1: '',
            daywork2: '',
            daywork3: 'среда, суббота',
            post1: 'Детский стоматолог',
            post2: '',
            post3: '',
            foto: 'Shamatava@2.jpg',
            about: 'Выпускница Санкт-Петербургского государственного медицинского университета им. ак. И.П.Павлова. Окончила ординатуру на базе кафедры ортодонтии Российской медицинской академии постдипломного образования ( заведующий кафедрой Малыгин Юрий Михайлович). На базе ФПО СПГМУ им.ак. И.П.Павлова прошла интернатуру по общей стоматологии и, в последствие, получила сертификат государственного образца о профессиональной переподготовке «Детская стоматология». Постоянно совершенствуюсь в своей специальности, посещая многочисленные семинары и научные конференции. Многим работа с детьми кажется сложной. Но я с этим не согласна. Для меня самая большая награда - это объятия моего маленького пациента после приема! В этот момент понимаешь, что ничего не может быть лучше!',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 27,
            daywork1: '',
            daywork2: '',
            daywork3: 'вторник, четверг, пятница, суббота',
            post1: 'Стоматолог-хирург',
            post2: 'Пародонтолог',
            post3: '',
            foto: 'Sladkov@2.jpg',
            about: 'Окончил 1 ЛМИ им. акад. И.П. Павлова в 1977 г. С 1977 по 1979 обучался в клинической ординатуре по челюстно-лицевой хирургии. Специализировался по челюстно-лицевой хирургии, пластической хирургии, имплантологии, хирургической пародонтологии. Работал в государственных и частных клиниках города. С апреля 2007 г. с удовольствием приступил к работе в «КДС».',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 28,
            daywork1: '',
            daywork2: '',
            daywork3: 'четверг, пятница, суббота',
            post1: 'Стоматолог-ортодонт',
            post2: '',
            post3: '',
            foto: 'petrashen.jpg',
            about: 'Закончила СПБГМУ им.акад.И.П.Павлова в 2010 году. Еще во время учебы в университете я поняла, что красивая открытая улыбка придает людям уверенность в себе. Пожалуй, это сыграло решающую роль в моем выборе. Далее последовали интернатура и ординатура на базе СЗГМУ им. И.И.Мечникова. Посещаю различные семинары, симпозиумы, съезды ортодонтов, понимая, что в нашей профессии необходимо постоянно совершенствоваться, не отставать и идти в ногу со временем. Я очень рада, что ортодонтия дает мне возможность работать как со взрослыми, так и с маленькими пациентами, а самое большое удовольствие для меня -видеть их счастливые улыбки!',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 29,
            daywork1: '',
            daywork2: '',
            daywork3: 'суббота, воскресенье',
            post1: 'Стоматолог-ортодонт',
            post2: '',
            post3: '',
            foto: 'sapickaya.jpg',
            about: 'Окончила стоматологический факультет СПбГМУ им. Аккад. И.П. Павлова, на базе которого также обучалась в интернатуре. Обучалась в клинической ординатуре в СЗГМУ им. И.И. Мечникова по специальности ортодонтия. Являюсь сертифицированным переводчиком медицинской литературы с английского языка, что позволяет мне совершенствовать свои знания изучая научные публикации не только в российских, но и зарубежных источниках . Постоянный участник стоматологических конференций, съездов ортодонтов, а также лекций ведущих ортодонтов России и зарубежья.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 30,
            daywork1: '',
            daywork2: '',
            daywork3: 'воскресенье',
            post1: 'Детский стоматолог',
            post2: '',
            post3: '',
            foto: 'Sokolova@2.jpg',
            about: 'Закончила стоматологический факультет СПбГМУ им. акад. Павлова в 1999 г. Интернатура по специальности детская стоматология в 2000 г. (СПбГМУ им. акад. Павлова). Ординатура по специальности "Ортодонтия" 2013-2015 гг. (СПб ИНСТОМ). Стаж работы в детской стоматологии - 17 лет.',
            raiting: 0,
            status_medic: 1
        },
        {
            user_id: 31,
            daywork1: '',
            daywork2: '',
            daywork3: 'вторник, пятница',
            post1: 'Стоматолог-терапевт',
            post2: '',
            post3: '',
            foto: 'Listopad@2.jpg',
            about: 'Образование: высшее медицинское. Специальность «Стоматология», Стоматологический Факультет пСПбГМУ им. акад. И. П. Павлова. Последипломное образование: Клиническая интернатура, Стоматологический Факультет пСПбГМУ им. акад. И. П. Павлова. Профессиональная переподготовка в Северо-Западном Государственном университете им. И.И.Мечникова, специализация терапевтическая стоматология. Дополнительно профессиональная переподготовка в пСПбГМУ им. акад. И. П. Павлова, специализация хирургическая стоматология. Регулярно повышаю свой профессиональный уровень, посещаю различные конференции и семинары. Специализация в области эстетической стоматологии, эндодонтическом лечении.',
            raiting: 0,
            status_medic: 1
        },
    ]
)

Diplom.delete_all
Diplom.reset_pk_sequence
Diplom.create(
    [
        {file: 'diplom_emil_1.jpg', medic_id: 1},#Агаджанян
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
        {file: 'diplom_jigunova_1.jpg', medic_id: 2},#Жигунова
        {file: 'diplom_jigunova_2.jpg', medic_id: 2},
        {file: 'diplom_jigunova_3.jpg', medic_id: 2},
        {file: 'diplom_jigunova_4.jpg', medic_id: 2},
        {file: 'diplom_jigunova_5.jpg', medic_id: 2},
        {file: 'diplom_okunev_1.jpg', medic_id: 9},#Окунев
        {file: 'diplom_okunev_2.jpg', medic_id: 9},
        {file: 'diplom_okunev_3.jpg', medic_id: 9},
        {file: 'diplom_okunev_4.jpg', medic_id: 9},
        {file: 'diplom_okunev_5.jpg', medic_id: 9},
        {file: 'diplom_okunev_6.jpg', medic_id: 9},
        {file: 'diplom_okunev_7.jpg', medic_id: 9},
        {file: 'diplom_okunev_8.jpg', medic_id: 9},
        {file: 'diplom_okunev_9.jpg', medic_id: 9},
        {file: 'diplom_dubinskaya.jpg', medic_id: 3},#Дубинская
        {file: 'diplom_dubinskaya2.jpg', medic_id: 3},
        {file: 'diplom_dubinskaya3.jpg', medic_id: 3},
        {file: 'diplom_dubinskaya4.jpg', medic_id: 3},
        {file: 'diplom_dubinskaya5.jpg', medic_id: 3},
        {file: 'diplom_dubinskaya6.jpg', medic_id: 3},
        {file: 'diplom_tihanova_1.jpg', medic_id: 6},#Тиханова
        {file: 'diplom_tihanova_2.jpg', medic_id: 6},
        {file: 'diplom_tihanova_3.jpg', medic_id: 6},
        {file: 'diplom_tihanova_4.jpg', medic_id: 6},
        {file: 'diplom_tihanova_5.jpg', medic_id: 6},
        {file: 'diplom_tihanova_6.jpg', medic_id: 6},
        {file: 'diplom_tihanova_7.jpg', medic_id: 6},
        {file: 'diplom_tihanova_8.jpg', medic_id: 6},
        {file: 'diplom_tihanova_9.jpg', medic_id: 6},
    ]
)