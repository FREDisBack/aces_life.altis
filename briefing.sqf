waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["foreword","Предисловие"];
player createDiarySubject ["serverrules","Правила сервера"];
player createDiarySubject ["behavioral","Правила этикета"];
player createDiarySubject ["penality","Штрафы"];
player createDiarySubject ["close","Заключение"];

	player createDiaryRecord["foreword",
		[
			"Донат",
				"
				У нас есть на нашем сервере система Премиум-статус V.I.P.Статус действителен в течение месяца и доступен сразу после уплаты. Авансовые платежи не принимаются.<br/>
				Как V.I.P вы получите доступ к вашим магазинам(+Точка спавна) и у вас есть скидки 50%:<br/>
				- На всю технику<br/>
				- Hа всё оружие<br/>
				- На всю одежду<br/>
				- Доп.оружие и акссесуары к ним<br/>
				- Более подробная инфа на нашем форуме в разделе(Приобретения за Донат)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["foreword",
		[
			"Банк",
				"
				На нашем сервере банк расположен в другом месте.Мы дадим вам инструкции ограбления Банка.<br/>
				При ограбление банка вы нуждаетесь в следующем:<br/>
				- Шуроповёрт<br/>
				- Подрывной заряд<br/>
				- Транспортное средство<br/><br/>
				  Ограбление банка делаеться следующим образом:<br/>
				1. Взлом банковских дверей<br/>
				2. Взлом дверей помещения с сейфами<br/>
				3. Взорвать сейф<br/>
				4. Перевозка украденных золотых слитков (возможна только с наземного транспортного средства)<br/>
				5. Все лица, находящиеся в отмеченной области во время ограбления банка рассматривать как грабитель банка и классифицированы полицией как враждебные.<br/>
				6. Продажа золотых слитков у Супщика золотых слитков<br/><br/>
				Полиция должна ремонтировать двери и сейф после ограбления банка, в противном случае банк свободно доступен. Если разрывной заряд установлен, появляется таймер, который показывает время взрыва. Разрывной заряд должен обезвреживаться до истечения таймера с помощью C4-Кусачки.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["foreword",
		[
			"Предисловие",
				"
				Немного о новшествах сервера<br/>
				- Система крафта улучшенный вариант<br/>
				- DLC Система разлочена(верталёты,картинг)<br/>
				- Система охраны домов<br/>
				- Сбалансированны цены<br/><br/>
				Ключи от наручников в лагере повстанцев/черный рынок<br/>
				Рыночная система динамическая<br/>
				Служба безопастности(Охрана)<br/>
				И многое другое вы увидите у нас<br/>
				"
		]
	];
	
	player createDiaryRecord ["foreword",
		[
			"Специальные элементы управления",
				"
				Левый Windows: Основная клавиша взаимодействия а также клавиша для сбора<br/>
				Y: Открытие меню игрока<br/>
				T: Открытие\багажник\хранилище дома<br/>
				U: Открыть/Закрыть для транспорта<br/>
				U: Открыть/Закрыть дом<br/>
				Кнопка Shift + G: Поднять руки<br/>
				Кнопка Shift + R: Сбить с ног / Арестовать<br/><br/>
				Кнопка Shift + L: Фары и (для Полиции и Медиков маячки)<br/>
				F: Сирена (для Полиции и Медиков)<br/>
				Shift + F: Сирена (для Полиции и Медиков)<br/>
				O: Открытие шлагбаума(на транспорте для полиции)<br/>
				Shift + O: Мобильный банкомат (для полиции)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["foreword",
		[
			"Как нас найти",
				"
				- Filter:[RU] ACES Altis Life [https://vk.com/aceslife]<br/>
				- IP:212.22.93.135:2302<br/>
				- IP:TS:aces.go-ts.su<br/>
				- Наш сайт:www.aces-life.ru/<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["foreword",
		[
			"Предисловие ",
				"
				Соблюдайте правила нашего острова, а так же РП, поскольку данный режим является именно симулятором реальной жизни.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Претензии",
				"
				Претензии к игрокам(гос-служащим) обрабатываются только лишь с обосноваными доказательствами Скриншоты\Видео и обязательно ники игроков.Администрация рассмотрит ваши жалобы в кратчайшие сроки.<br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Правила Коммуникации",
				"
				1. В Гражданском чате можно только писать(не капсом) Стоит защита на разговоры.<br/>
				2. Спам в чатах запрещён и может быть изгнан или по правилам сервера забанен.<br/>
				3. Для связи мы специально создали связь в Tack Force? для банд можно сделать отдельные комнаты,пишите Администрации.<br/>
			    4. Любая реклама серверов групп или программ что связанно с игрой наказывается БАНОМ!<br/>
				5. ВСЕ ОСТАЛЬНЫЕ И ПОДРОБНЫЕ ПРАВИЛА НАПИСАНЫ НА ФОРУМЕ www.aces-life.ru
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Новая жизнь",
				"
				Новая жизнь начинается тогда, когда ты умрешь.<br/>
				Новая жизнь вступает в силу если вы больше не можете вмешаться в события в течении 15 мин, которые привели к смерти в радиусе 2 км нельзя приблежаться к своему трупу.<br/>
				Не считается Новая жизнь:<br/>
				- Умышленное самоубийство, чтобы избежать РП ситуацию<br/>
				- Смерть RDM/VDM<br/>
				- Смерть от Бага<br/>
				- С помощью кнопки респауна<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatch (RDM)", 
				"	
				Следующее нужно осматривать как RDM:<br/>
				1. Необоснованный умышленный расстрел других игроков<br/>
				2. Беспричинные  взрывы с ранением или убийством людей<br/>
				Также лицензия повстанцев или V.I.P не даёт право на беспорядочные убийства!<br/>
			    Укрытия БАНД это не RDM площадь, применяются обычные правила.<br/>
				Самооборона или защита граждан или-членов банды не считается RDM.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Безопасные зоны",
				"
				Зелёные зоны(ЗЗ) включают в себя следующие области:<br/>
				- все области отмечены на карте зелёным цветом кругом<br/>
				- все полицейские участки<br/>
				- все продавцы и банкоматы в радиусе 30 метров<br/>
				В зелёных зонах запрещено следующие:<br/>
				- Кража любых транспортных средств<br/>
				- Взрывать транспорт,недвижимость<br/>
				- Закладывать бомбы(взрывать)<br/>
				- Любые убийства/порча имущества<br/>
				- Любое похищение людей гос-служащих<br/>
				- Убийства/Суицид со взрывом:<br/>
				- Сбивать с ног/ грабить людей<br/>
				- Похищать/Открывать стрельбу<br/>
				- Портить транспорт гражданских<br/>
				- Прыгать под транспорт гражданских<br/>
				Безопасная зона на всех участках полиции для всех сотрудников полиции.<br/>
				Безопасные зоны становятся недействительными(кроме Кавала и полицейских участков(КПП) при следующем.<br/>
				Если в городе вводится военное положение но при этом банда(лидеры банд)сообщает об этом зарание шефу полиции за один час до нападения на город, при условие что в игре будет минимум 5 сотрудников полиции(кадеты не в счёт).Однако этот город не может быть ни при каких обстоятельствах Кавала.Борьба за город между сотрудниками гос-структур и бандами не должна превышать 4 часа в случае рестарта военные действия отменяются.Передача города и его захват не дает право чтобы убивать там мирных жителей без разбора, полицейские могут быть убиты, если они подходят к вашему захваченному городу без предупреждения.Например за захваченный вами город бандой вы можете требовать денежные средства с гражданских лиц за передвижение или нахождение в нём.Город будет считаться захваченый вами до тех пор пока полиция не арестует или не уничтожит всех захватчиков!<br/><br/>
				"
		]
	];
	
	
	
	player createDiaryRecord ["serverrules",
		[
			"Причины БАНА", 
				"			
				1.  Читерство<br/>
				2.  Дюпинг<br/>
				3.  Реклама<br/>
				4.  Багоюз<br/>
				5.  Оскорбления<br/>
				6.  Таран техникой,давить техникой граждан<br/>
				7.  RDM/VDM<br/>
				8.  Неадекватное поведение,всякого рода оскорбления,выражение расизма,лозунги <br/>
				9.  Любые действия,что бы не отыгрывать свою роль RP или для предотвращения RP (преднамеренное самоубийство, Combatlog)Вы будете моментально в чёрном списке сервера.<br/>
				10. Игнорирование новых правил жизни<br/>
				11. Полные правила на нашем форуме.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Общая информация",
				"
				Государство не предоставляет никаких убийств на заказ!<br/>
				Нет привилегий на незаконных других видов деятельности <br/>
				Правила сервера можно найти также на нашем форуме в соответствующей теме<br/>
				Открытие огня без предупредительных выстрелов с вертолета по любым целям считается RDM.<br/>
				Стрельба по автомобильным колёсам разрешается до тех пор,пока никто не был убит!Все остальное следует рассматривать как RDM.<br/>
				поэтому считается что огонь не может быть открыт без предупреждения ни в коем случае!!!<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Правила Механиков",
				"
				Механики имеют политический иммунитет.(Убийство или захват в заложники механика БАН!)<br/>
				- Служба механиков ремонтирует транспорт всем игрокам без исключения предварительно получив вызов.<br/>
				- Служба механиков не может без причины находиться на запретных территориях.<br/>
				- Служба механиков непосредственно подчиняется Главе МЧС.<br/>
				Прейскурант цен на ремонт:<br/>
				-Ремонт квадрацикла стоимость 1000:<br/>
				-Ремонт легковых авто стоимость 5000:<br/>
				-Ремонт грузовых авто стоимость 7000:<br/>
				-Ремонт авио транспорта стоимость 10000:<br/>
				-Ремонт водного транспорта стоимость 15000:<br/>
				-В ремонт входит:Ремонт транспорта,заправка<br/>
				Если механик не соблюдает эти правила, то ему нет места в данной профессии.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Правила Медиков",
				"
				Медики несут ответственность за здоровье каждого человека.Они имеют политический иммунитет.(Убийство или захват в заложники медика БАН!)<br/>
				Медики не могут:<br/>
				- задерживаться на поле сражения или оживлять убитых во время текущего боя.Они должны ждать,до тех пор пока бой не заканчится.<br/>
				- в ограблении банка оживлять преступников,нападавших.<br/>
				- Носить оружие или осуществлять любые другие преступные действия.<br/>
				- Медики не имеют право без особого разрешения переходить за слоты гражданских.<br/>
				- Медики не имеют право играть в незаконном казино и находиться без причины в не законных местах(плантации,переработка,лагерь и форпост повстанцев,убежищах).<br/>
				Если медик не соблюдает эти правила, то ему нет места в данной профессии.<br/>
				Медики должны:<br/>
				-Медики должны подчиняться непосредственно своему начальству(Глава Мчс) и полиции.<br/>
				-Медики имеют право перейти за роль механиков с получения разрешения от Главы МЧС.<br/>
				Поведение после боя:<br/>
				- Победа полиции: оживление повстанцев при приказе полиции<br/>
				- Победы повстанцев: оживление повстанцев до возрождения полицейских, если необходимы то инструкции повстанцев соблюдать<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Правила полиции",
				"
				Полиция делится следующим образом:<br/>
				1. Кадет<br/>
				2. Рядовой<br/>
				3. Сержант<br/>
				4. Лейтенант<br/>
				5. Ст. Лейтенант<br/>
				6. Капитан<br/>
				7. Майор<br/>
				8. Полковник(шеф полиции)<br/>
				Звание офицер несет ответственность за любое использование управления и координации и распределения сил. Чтобы предоставить инструкции для сотрудников полиции по рангу.<br/><br/>
				<br/><br/>
				Следуя правилам каждый офицер должен соответствовать:<br/>
				1. Убийства следует избегать при любых обстоятельствах. Арест должен иметь главным приоритетом. Огнестрельное оружие используется только в черезвычайных ситуациях или поимка особо опасных преступников.<br/>
				2. Кадеты могут находиться только в городе Кавала и патрулировать улицы города Кавала, также могут быть взяты на обучение или рейды но только с офицерским составом.<br/>
				3. Патруль должен состоять минимум из двух полицейских.<br/>
				4. Все Гражданские лица могут отказывать в обыске(исключение если полицейский заметил у него вещи,предметы),но обязаны предъявить паспорт гражданина.Если гражданин отказывает в обыске то полиция имеет право доставить их в полицейский участок для разберательства.<br/>
				5. Дома могут вскрываться только при безотлагательном подозрении или если гражданин находится в розыске за серьёзные нарушения и вовремя приследований.Владелец имеет право подать жалобу на сотрудников полиции в случае непровамерных действий.<br/>
				6. Подразделение СОБР может обыскивать дома составом из 2 человек, для полицейского состава нужно мин 2 сержанта и один Офицер<br/>
				7. Подразделение СОБР это специальное подрозделение которое подчиняется своему начальнику и шефу полиции.СОБР имеет специальную технику и оружие для ликвидации черезвычайных проишествий.<br/>
				8. В зонах повстанцев(исключение погоня за преступником) и нелегальных областях(области добычи наркотиков ,нелегальных ресурсов добычи)Нельзя полиции делать облавы,засады.Полиция не имеет право находиться более 5 минут на обработках нелегальных товаров и наркодилеров(ислючение может быть при официальной наводке с оповещением зама или шефа полиции.<br/>
				9. При взятиях в заложники жизнь заложника имеет высший приоритет. НИЧТО не важнее чем жизнь невинных граждан.В заложники имеют право взять когда в сети есть хотя бы один офицер полиции(если нету офицера в сети они имеют право проигнорировать ваше сообщение)<br/>
				10.Налеты на банк могут предотвращаться в случае необходимости с приминением огнестрельным оружия и спец.техники.При вводе военного положения объявляется радиус не более 2 км при котором полиция отправляет сообщение всем и имеет право в зоне радиуса применять огнестрельное оружие на поражение.<br/>
				11.Кроме того, для полицейских относится и правило Новая жизнь.<br/>
				12.Всему составу кто служит в гос-структурах запрещено переходить за гражданские слоты,наказание безвозратное увольнение(за исключением просьбы администрации)<br/>
				13.Полиция имеет право применять тяжёлую авиацию(Кайман,Блекфут)при ограбление банка и захвата городов,также могут использовать в качестве уничтожения авио техники(тяжёлая авио техника) приобретённой за ДОНАТ!!!.<br/>
				14.Главное правило полиции освободить заложника любым способом и не причинив ему вреда.<br/>
				15.Приказы,команды,инструкции офицеров высшего ранга полиции не оспариваются.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Легальное оружие",
				"
				Владение оружием ограничено.<br/>
				Исключением является этот список легального оружия с действительной лицензией:<br/>
				- Rook 40<br/>
				- ACP C2<br/>
				- Zubr Revolver<br/>
				- 4-Five<br/>
				Это оружие могут носить все с лицензией на оружие а в городах должно быть убрано в кабуру или за спину.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Правила повстанцев",
				"
				1. Повстанцами считаются, если приобретено транспортное средство на базах или лагерях повстанцев или имеют нелегальное оружие.Владение лицензии повстанца не наказуемо.<br/>
				2. Повстанцы не освобождены от правил RDM!<br/>
				3. Повстанцы являются врагами государства, поэтому когда гражданские сообщают о передвежение их то сразу сообщают в полицию их арестовывают если есть какие нибудь нарушения.<br/>
				Для объявления войны против других кланов считается действительным если, сделано следующее уведомление:<br/>
				- Объявление в новостях канала 7<br/>
				- Объявление через SMS к лидеру банды<br/>
				- Уведомление по SMS в полицию<br/>
				Объявление войны применяется только во время работы сервера, т.е. до тех пор пока непроизошёл следующий рестарт сервера.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Незаконные вещества",
				"
				Запрещённые вещества. Список ниже:<br/>
				- Сигары<br/>
				- Наркотики (Марихуана, Героин, Кокаин)<br/>
				- Напитки с содержанием алкаголя более чем от 15 процентов<br/>
				Какой-либо демонтаж, Владение, Потребление или торговля запрещена и соответствующим образом наказывается см каталог штрафов.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Автомобильный и воздушный транспорт",
				"
				Существуют следующие ограничения скорости (независимо от знаков):<br/>
				- 30 km/h Все рынки городов<br/>
				- 50 km/h Во всех крупных городах<br/>
				- 70 km/h Во всех других городах<br/>
				- на всех шоссе нет никакого ограничения скорости<br/>
				Управление Картингом разрешено только с соответствующей защитной одеждой, использование картинга разрешенно с 08 00 до 20 00.<br/>
				Минимальная высота полета 200 метров по городам.<br/>
				Таран любой воздушной техники ,наземной техники или задержки  и повреждения в уличном движении и воздушном сообщении запрещены и соответствующим образом наказываются.(кик-бан от 1 до 7 дней)<br/>
				Владение и управление нелегальными транспортными средствами запрещено.Список нелегального транспорта:<br/>
				- Ifrit, Strider,Охотник с пулемётом,Внедорожник (вооруженный) а также все транспортные средства, участвующие в незаконной деятельности<br/>
				- Весь полицейский транспорт<br/><br/>
				Этот транспорт будет конфискован или уничтожен полицией, в зависимости от ситуации, принимает решение управление полиции!
				"
		]
	];
	
	player createDiaryRecord["behavioral",
		[
			"Общая информация",
				"
				- Владение,ношение любых масок и любой формой повстанцев является незаконным(подлежит изьятию).<br/>
				- Владение лицензиями, законными и незаконными, не является преступлением.<br/>
				- Каталог штрафов можно посмотреть в нашей группе ВК в соответствующей теме.<br/><br/>
				"
		]
	];
		
	player createDiaryRecord["penality",
		[
			"Время в тюрьме за неуплату штрафа",
				"
				- Сотрудник полицци может выписать максимальный штраф только до 500 тыс.<br/>
				 Штраф на сумму $1,000,000  или множество убийств или убийство сотрудника полиции, повстанческое востание или терроризм, ограбление банка, не можете оплатить штраф на эту сумму(на усмотрение шефа полиции или зама).Подозреваемый будет немедленно арестован минимум на 45 минут..<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Тяжкие преступления",
				"
				Игра в азартные игры в нелегальном казино: 10000$<br/>
				Обстрел людей / пилотируемых транспортных средств: 50.000<br/>
				Угроза 20.000$<br/>
				Подстрекательство к убийству: 100.000$<br/>
				Убийство: 150.000$<br/>
				Попытка похищения: 50.000$<br/>
				Похищение: 70.000$<br/>
				Попытка ограбления: 30.000$<br/>
				Ограбление: 50.000$<br/>
				Попытка ограбления банка: 350.000$<br/>
				Ограбление Банка: 500.000$<br/>
				Востание повстанцев: 200.000$<br/>
				Терроризм: 500.000$<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Общение с полицией",
				"
				Оскорбление должностного лица: Кик,повторное бан<br/>
				Припятсвование полиции / Не обращения внимания на просьбы полиции: 10.000$ <br/>
				Освобождение и помощь арестованным: 30.000$<br/>
				Помощь при побеге: 20.000$<br/>
				Бегство: 30.000$<br/>
				Побег Из Тюрьмы: 100.000$<br/>
				Помощь к побегу из тюрьмы: 50.000$<br/> 
				Вход в запретную зону: 10.000$<br/>
				Обстрел гос-служащих: 50.000$<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Незаконные предметы/вещества",
				"
				Алкоголь / хранение наркотиков: 100.000 или спиртного хранение: 2<br/>
				Алкоголь / наркотики: 10.000$<br/>
				Алкоголь / незаконный оборот наркотиков: 100.000$ (количество более 10 не ценится как собственная потребность)<br/>
				Попытка карманной кражи: 7.500$<br/>
				Карманные кражи: 15.000$<br/>
				Попытка угона транспортного средства: 10.000$<br/>
				Кража транспорта: 20.000$<br/>
				Торговля украденными средствами(транспортом): Цена покупки транспортного средства x 2<br/>
				Торговля взрывчатыми веществами: количество черных мешков порошка / пушечных ядер x 5.000 $,количество бомб x 15.000$<br/><br/>
				Незаконное вождение: $50,000 захват/уничтожение<br/><br/>
				Открытое ношение оружия в городах: 5.000$<br/>
				Владение  оружия без лицензии: 10.000$ + Изъятие<br/>
				Хранение незаконного оружия: 50.000$ + Изъятие<br/>
				Стрельба из оружия (самооборона исключение): 30.000$ + Изъятие<br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Воздушный транспорт",
				"
				Полет без лицензии пилота: 50.000$ + Изъятие<br/>
				Полет без спец огней: 10.000$<br/>
				Игнорирование минимальной высоты: 10.000$<br/>
				Посадка в неположенных местах в городах / на дорогах: 20.000$ + Изъятие<br/>
				Полёт в алкогольном/наркотическом состоянии: 100.000$ + Изъятие<br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Автомобильный транспорт",
				"
				Превышение ограничения скорости:<br/>
				- 10 km/h: 2.000$ (считается только для рыночных площадей и городов)<br/>
				- 20 km/h: 5.000$<br/>
				- 50 km/h: 10.000$ + Изъятие<br/>
				- 75 km/h: 20.000$ + Изъятие<br/>
				- 100 km/h: 30.000$ + Изъятие<br/>
				- 150 km/h: 50.000$ + Изъятие<br/>
				Нарушение тишины: 5.000$<br/>
				Вождение без лицензии на легк-авто: 1.000$ + Изъятие<br/>
				Вождение без лицензии на груз-авто: 40.000$ + Изъятие<br/>
				Вождение без света: 2.500$<br/>
				Неправильная парковка/задержка движения: 2.500$<br/>
				Вождение в алкогольном/наркотическом состоянии: 20.000$ + Изъятие<br/>
				Виновник аварии: 7.500$<br/>
				Виновник аварии с принисением увечья: 15.000$<br/>
				Уклонение водителя от ответственности: 30.000$<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["penality",
		[
			"Информация городов",
				"
				Города Кавала, Пиргос, Атира, София, Телос, Участки полиции а также лагерь повстанцев и VIP база над Атирой находятся в зелёной зоне(ЗЗ).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["close",
		[
			"Ссылки",
				"
				ArmA 3: www.arma3.com<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["close",
		[
			"Заключительное слово",
				"
					Вопреки многим правилам и приказам, которые обязательны у нас на сервере.Если вы имеете сомнение или вас что то в них не устраивает то пожалуйста обратитесь к Администрации!!<br/><br/>
				"
		]
	];
