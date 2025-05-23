// arg0: ind de dialogo
// ret: str del dialogo

switch argument0 {

	// para objeto txt
	case 0:
		return "Имя или зарегистрированный адрес электронной почты";
	case 1:
		return "Пароль для входа";
	case 2:
		return "Новый пароль (необязательно)";
	case 3:
		return "Электронная почта для создания учетной записи";
	case 4:
		return "Ваш логин";
	case 5:
		return "Имя или адрес электронной почты для поиска";
	case 6:
		return "Открытый текст";

	// para GUI
	case 100:
		return "Предупреждение: будьте осторожны, чтобы не использовать свой пароль для важных сетей (низкая безопасность)";
	case 101:
		return "Russian";
	case 102:
		return "Веб + Софт";
	case 103:
		return "Нет ошибки подключения к Интернету";
	case 104:
		return "Рег:";
	case 105:
		return "Мод:";
	case 106:
		return "Действовать:";
	case 107:
		return "Янв";
	case 108:
		return "Фев";
	case 109:
		return "Море";
	case 110:
		return "Апр";
	case 111:
		return "май";
	case 112:
		return "Июн";
	case 113:
		return "Июл";
	case 114:
		return "Авг";
	case 115:
		return "Сен";
	case 116:
		return "Октябрь";
	case 117:
		return "Ноя";
	case 118:
		return "Декабрь";
	case 119:
		return "Овен";
	case 120:
		return "Телец";
	case 121:
		return "Близнецы";
	case 122:
		return "Рак";
	case 123:
		return "Лео";
	case 124:
		return "Дева";
	case 125:
		return "Весы";
	case 126:
		return "Скорпион";
	case 127:
		return "Стрелец";
	case 128:
		return "Козерог";
	case 129:
		return "Аквариум";
	case 130:
		return "Рыбы";
	case 131:
		return "Каждый";
	case 132:
		return "Только с длинными текстами";
	case 133:
		return "Только недавно активный";
	case 134:
		return "Всего мира";
	case 135:
		return "Предупреждение Вы должны войти в систему для автоматического поиска";
	case 136:
		return "Семья";
	case 137:
		return "Фермер";
	case 138:
		return "повар";
	case 139:
		return "Ремесленник";
	case 140:
		return "Шахтер";
	case 141:
		return "кузнец";
	case 142:
		return "Врач";
	case 143:
		return "Лидер";
	case 144:
		return "Защитник";
	case 145:
		return "Воин";
	case 146:
		return "Строгальный станок";
	case 147:
		return "Волшебник";
	case 148:
		return "Священник";
	case 149:
		return "Художник";
	case 150:
		return "Спортсмен";
	case 151:
		return "Клоун";
	case 152:
		return "Компаньон";
	case 153:
		return "Бизнесмен";
	case 154:
		return "Очиститель";
	case 155:
		return "Хиппи";
	case 156:
		return "Укротитель";
	case 157:
		return "Пилот";
	case 158:
		return "Курьер доставки";
	case 159:
		return "Писатель";
	case 160:
		return "Инженер";
	case 161:
		return "Архитектор";
	case 162:
		return "Убийца";
	case 163:
		return "Научный";
	case 164:
		return "Роли";
	case 165:
		return "Зоны";
	case 166:
		return "Эмоции";
	case 167:
		return "Зодиак";
	case 168:
		return "Fem";
	case 169:
		return "Wat";
	case 170:
		return "Gro";
	case 171:
		return "Воздуха";
	case 172:
		return "Плохо";
	case 173:
		return "Neu";
	case 174:
		return "Идти";
	case 175:
		return "Pro";
	case 176:
		return "Средний";
	case 177:
		return "Официальный";
	case 178:
		return "Записывать";
	case 179:
		return "Еженедельно:";
	case 180:
		return "Общий:";
	case 181:
		return "Предупреждение. Вы должны войти в систему, чтобы провести официальную симуляцию.";

	// para nombre de zona
	case 200:
		return "Северная Америка (Канада)";
	case 201:
		return "Северная Америка (США)";
	case 202:
		return "Северная Америка (Мексика)";
	case 203:
		return "Южная Америка (Колумбия)";
	case 204:
		return "Южная Америка (Бразилия)";
	case 205:
		return "Южная Америка (Аргентина)";
	case 206:
		return "Европа (Испания)";
	case 207:
		return "Европа (Англия)";
	case 208:
		return "Европа (Германия)";
	case 209:
		return "Европа (Россия)";
	case 210:
		return "Восток (Аравия)";
	case 211:
		return "Восток (Индия)";
	case 212:
		return "Восток (Китай)";
	case 213:
		return "Африка (Египет)";
	case 214:
		return "Африка (Конго)";
	case 215:
		return "Африка (ЮАР)";
	case 216:
		return "Океания (Австралия)";
	case 217:
		return "Северная Америка";
	case 218:
		return "Южная Америка";
	case 219:
		return "Европа";
	case 220:
		return "Восток";
	case 221:
		return "Африке";
	case 222:
		return "Мир (Все)";

	// para nombres de comportamientos
	case 300:
		return "Защити свою страну, не уходи";
	case 301:
		return "Нападите на случайную страну";
	case 302:
		return "Атакуйте сильнейшую страну";
	case 303:
		return "Атакуй самую слабую страну";
	case 304:
		return "Атаковать ближайшую страну";
	case 305:
		return "Оставайся в группе, следуй за группой";
	case 306:
		return "Следуйте за другим случайным гражданином";

	// mensajes HTTP
	case 400:
		return "Неизвестная ошибка";
	case 401:
		return "Ошибка подключения к серверу";
	case 402:
		return "Ошибка базы данных сервера";
	case 403:
		return "Ошибка Версия приложения недопустима";
	case 404:
		return "Ошибка Недостаточно параметров";
	case 405:
		return "Ошибка запроса сервера";
	case 406:
		return "Предупреждение Имя пользователя уже существует";
	case 407:
		return "Предупреждение. То, что вы искали, не было найдено";
	case 408:
		return "Предупреждение Вы должны редактировать один раз в час";
	case 409:
		return "Успешно зарегистрировались, проверьте почту";
	case 410:
		return "Предупреждение Пожалуйста, введите действующий адрес электронной почты или имя";
	case 411:
		return "Внимание! Пароль должен состоять не менее чем из 6 символов.";
	case 412:
		return "Успех Обновленная информация";
	case 413:
		return "Внимание! Обновите данные на вкладке флажков.";

	// titulos de los temas del libro
	case 500:
		return "О DelRow";
	case 501:
		return "Войти и зарегистрироваться";
	case 502:
		return "Обработка данных";
	case 503:
		return "Иконки профиля";
	case 504:
		return "Версия профиля";
	case 505:
		return "Поиск по профилю";
	case 506:
		return "Семейный дом)";
	case 507:
		return "Урожай (фермер)";
	case 508:
		return "Пекарня (повар)";
	case 509:
		return "Портняжное дело (Ремесленник)";
	case 510:
		return "Шахта (Шахтер)";
	case 511:
		return "Металлообработка (Кузнец)";
	case 512:
		return "Больница (Врач)";
	case 513:
		return "Форум (Лидер)";
	case 514:
		return "Башня (Защитник)";
	case 515:
		return "Казармы (Воин)";
	case 516:
		return "Кладбище (Cepulturero)";
	case 517:
		return "Ритуал (Волшебник)";
	case 518:
		return "Храм (Жрец)";
	case 519:
		return "Консерватория (Художник)";
	case 520:
		return "Спортзал (Спортсмен)";
	case 521:
		return "Игры (Клоун)";
	case 522:
		return "Мотель (компаньон)";
	case 523:
		return "Рынок (трейдер)";
	case 524:
		return "Мусор (очиститель)";
	case 525:
		return "Парк (хиппи)";
	case 526:
		return "Питомник (Укротитель)";
	case 527:
		return "Порт (пилот)";
	case 528:
		return "Мессенджер (Мессенджер)";
	case 529:
		return "Библиотека (писатель)";
	case 530:
		return "Турбина (инженер)";
	case 531:
		return "Здание (Архитектор)";
	case 532:
		return "Бар (Убийца)";
	case 533:
		return "Научная лаборатория)";
	case 534:
		return "Поведение, часть 1";
	case 535:
		return "Поведение, часть 2";
	case 536:
		return "Обновление статистики";
	case 537:
		return "Общая статистика";
	case 538:
		return "Статистические данные";
	case 539:
		return "Военные Иконки";
	case 540:
		return "Кнопки войны";
	case 541:
		return "Пользовательская война";
	case 542:
		return "Командный симулятор";
	case 543:
		return "Симулятор Юнитов";
	case 544:
		return "Симуляционные центры";
	case 545:
		return "Об этой книге";

	// parrafos de los temas del libro
	case 700:
		return "Интерактивное программное обеспечение, созданное Омаром Йорданом (Omwekiatl), Колумбия, 2021 г.##(v $).##Виртуальное сообщество, которое питает симуляторы мировой войны, вы можете:##- Настроить свой аватар.##- Выразите что-нибудь дословно.#- Поиск других профилей.#- Выберите мировую зону, которую он поддерживает.#- Выберите свою роль в обществе.#- Выберите способ поведения.#- Просмотр текущего статуса войны и статистики.#Эта версия для ПК имеет движок моделирования с расширенными параметрами. Официальный язык: испанский.";
	case 701:
		return "Для регистрации используйте электронную почту, на которую придете пароль.##Для входа используйте адрес электронной почты, с которым вы зарегистрировались, или имя пользователя; При регистрации вы увидите случайное имя пользователя и пароль в своем электронном письме, их можно изменить.##Третья полоска логина - поставить новый пароль, в случае, если вы хотите сменить предыдущий, будьте осторожны, не используйте важные пароли.##Если вы не помните свой пароль, пожалуйста, войдите в систему еще раз, чтобы получить случайный пароль.##Shift + Delete: чистая текстовая строка.";
	case 702:
		return "Ваша информация не будет продаваться или передаваться третьим лицам, а также не будет использоваться для продвижения рекламы, но глобальная статистика сообщества может быть видна публично, вот о чем идет речь.##Ваш пароль зашифрован, но будьте осторожны.##Вы можете выражать то, что хотите, в своем профиле, здесь нет цензуры и запретов, поэтому эта система не подходит для несовершеннолетних или чувствительных людей; мы по-прежнему доверяем вашей этике (будь добрым подлецом).";
	case 703:
		return "Об изображении:#имя / зона / роль.##Изображение:#Здание (роль) / Аватар / Зодиак.##Под изображением: свободный текст, поведение.#Внизу слева даты: - регистрации в системе.#- Модификация профиля.#- Последний раз активен.#Нижние правые кнопки: - Закрыть сеанс (выйти из системы).#- Редактировать профиль (1 раз каждый час).";
	case 704:
		return "- Измените свое имя (оно должно быть уникальным).##- Измените зону, которую он поддерживает.##- Измените аватар с помощью зеленых стрелок.#- Напишите что-нибудь (красный фон означает обширный).#- Измените поведение.#Нижние правые кнопки:#- Зеленая: отменить редактирование.#- Красный: принять и отправить изменения.#Shift + Delete: чистая текстовая строка.#Вы можете копировать и вставлять (Ctrl + C) (Ctrl + V).";
	case 705:
		return "Вы можете найти профиль пользователя, если в нем есть его имя или адрес электронной почты, записать его и щелкнуть увеличительное стекло; или нажмите джойстик, если вы ищете свой профиль.##Случайный поиск позволяет фильтровать по:#- Зоне.##- Профили с обширным текстом.##- Активен менее недели.#Для поиска нажмите на кости.#В профиле есть две кнопки:#- Выполнить еще один поиск.#- Сделайте скриншот (png).";
	case 706:
		return "Каждый может иметь работу и дом с детьми, но не здесь, оказывается, эта роль представляет тех, кто живет для своей семьи, своего дома, воспитывает и дает образование своим детям; они живут в комфортабельном доме и общаются с партнером, который проявляет те же интересы; возможно, это самая древняя и самая естественная роль.##Это базовые юниты, их способности и параметры такие же, как и в мире без ролей, но ... они несут половину семени, и когда встречаются две одинаковые роли, они вырастут в отродье, которое вырастет и станет еще один житель.";
	case 707:
		return "Они являются основой существования города или города, без еды, сомнительно, что население счастливо или живо ... их обычно можно найти на зеленых и обширных полях, с колодцами для добычи подземных вод и в окружении таких овощей, как: овес, банан, кукуруза, бобы, киноа, какао, арахис, пшеница.##В бою у них есть аура еды, поэтому они дают еду союзникам; Юниты, которых поощряют, атакуют быстрее, что дает им преимущество; но это сырая пища, поэтому ее действие длится недолго, они должны оставаться в ауре.";
	case 708:
		return "Кому не нравится запах горячего хлеба или любой свежеприготовленной еды, потому что пробуждать это чувство - задача этой роли, и ладно, еще и кормление ... он отвечает за превращение урожая в питательный деликатес, его специальность это: овес с корицей, банановый торт, кукурузная арепа, бургер из бобов, печенье из киноа, шоколадный десерт, торт из сухофруктов.##Кормите одного союзника за раз, то есть каждый раз, когда он выполняет свою особую способность; Юниты, которых поощряют, атакуют быстрее, что дает им преимущество; эффект от этой хорошей еды сохраняется надолго.";
	case 709:
		return "Много навыков в руках, терпения и необходимых идей, чтобы превратить кусок материала в ... более ценный материал; будь то создание одежды для ношения, ношения и защиты от холода, танцевальной обуви, мебели для посещения или сна, мечтающего о мире без войн, они сделают это.##Каждый раз, когда срабатывает его особая способность, он одевает союзный юнит в прохладную противоударную накидку, которая дает юниту броню, которая изнашивается полученными ударами.";
	case 710:
		return "Эти кроты из недр земли добывают сырье для всей производственной деятельности, их не беспокоит шум дробильных машин или они дышат плотным подземным воздухом, который, если они неустанно стремятся найти золото, алмаз, адамантий, чтобы получить кольцо или зуб.##Они хороши в осаде, они могут сбить вражеский городской центр, как если бы это был еще один хрупкий камень, они также собирают ценное в своих осадах, чтобы восстановить свой собственный городской центр.";
	case 711:
		return "Этот грубый гражданин не беспокоится о жаре литейного цеха, он остается там, превращая сырые минералы в предметы повседневного обихода, такие как: горшки, стаканы, пьедесталы, решетки и всякие железные скрутки; Среди них случайные мачете, меч, боевой топор ... Время от времени он создает дополнительное оружие и передает его союзнику, юниты с этим дополнительным оружием имеют больше атаки, но не все идеально, поэтому рано или поздно и с какое-то невезение оружие сломается.##";
	case 712:
		return "Здоровье, главное для жизни и даже больше для хорошей жизни; Эта роль отвечает за обеспечение собственного благополучия; До завершения операции или употребления сильнодействующих химикатов они пытаются распространить полезные привычки, такие как: хорошо пить, упражнения (гибкость + кардио), быть счастливыми и без стресса, сбалансированно питаться без жиров или сахара и небольшого количества мяса, глубоко дышать , спать спокойно, а иногда и голодать с целебными специями.##И что ж, с точки зрения симуляции, они лечат союзников, будь то физические повреждения или вирусные инфекции.";
	case 713:
		return "Всегда были те жители, у которых есть голос команды, гиперактивность для выполнения проектов и сильное чувство чести и альтруизма, эта роль предлагает в обществе возможность группировать и направлять идеи, проекты, инициативы, протесты; Для этого он должен слушать других, открывать дискуссионные форумы, наводить порядок и, самое главное, показывать пример.##Независимо от поведения других союзников, эта роль побуждает их следовать за ней, тем самым собирая небольшую группу, таким образом вы не пойдете в одиночку, еще одним преимуществом этого является то, что члены будут синхронизироваться при ответе на атаку на одного из них. .";
	case 714:
		return "Он эквивалент полицейского, его специальность - защита, поэтому он носит большой щит, вместо того, чтобы идти на войну, его миссия - навести порядок в обществе, дать людям почувствовать себя в безопасности и нейтрализовать любую угрозу.##Это самый стойкий юнит, то есть его способность; С другой стороны, она предоставляет башню как здание, она стреляет по врагу, но медленнее, чем походные башни, сделанные непосредственно на поле боя, даже если последние легко сносятся по сравнению с внутренним.##Устойчив к атакам преступников и взрывчатых веществ.";
	case 715:
		return "Это эквивалент военного, это жестокий воин, который выходит на поле боя с жаждой крови, уничтожая врага.##Может быть, вы думаете, что в военной игре, какой смысл будут иметь другие роли, ну, есть баланс, не обманывайтесь, у всех ролей есть преимущества и недостатки, и сообщество выражает себя со всеми как дело вкуса ... но да, он отличается самой высокой атакой (пассивной способностью).";
	case 716:
		return "Он редкость, как ворон, с меланхолией и глубокой задумчивостью он видел много захоронений, много слез, много концовок; Обычно это уединенные и медитативные сущности, их роль - дать покой и ночлег умершему; смерть, величайшая тайна жизни, эта роль постоянно переживается и хороша для того, чтобы давать советы скорбящим.##Когда он убивает врага на поле битвы, он восстанавливает очки жизни, как если бы это был вампир.";
	case 717:
		return "Будучи незнакомцем, посвятившим себя тайным искусствам, мистике, колдовству, по той же причине, по которой он обычно умалчивает о том, что он знает, говорят, что он проводит больше времени в путешествиях в своих снах и медитации, чем в самой жизни; Он пытается выполнять великую алхимическую работу, исследует тайны космоса и разговаривает с самыми разными сущностями.##Когда он умирает, он становится спектром, который следует за противником, давая ему неудачу в его атаках, это эффект ауры, поэтому он влияет на несколько одновременно; в жизни его вряд ли могут преобразовать священники.";
	case 718:
		return "У него есть храм, которому он посвящает свою преданность на всю жизнь, этот храм, в свою очередь, символизирует бога из нескольких, которые существуют, некоторые старше других, некоторые более забытые, а другие более модные; он наблюдает за моральным духом общества, взвешивая его эмоциональное бремя обещанием высшей помощи.##Его функция - идеологически преобразовать отряд, что означает, что он может сделать врага союзником, но это вероятность с одной попытки, на которую могут повлиять эффекты удачи, например: у него будет низкий шанс до проклятия призрак.";
	case 719:
		return "Музыка, живопись, скульптура, пение, актерское мастерство ... очень разнообразен и прекрасен диапазон искусства и его бесконечное проявление, эта роль, несомненно, запечатлевает мечты и кошмары на бумаге и звуке, каждое общество должно выражать себя, это самое запредельное .##В бою он будет носить с собой гитару, которая вдохновит поляризовать воздух, давая удачу атакам союзников; Тем не менее, этот эффект временный, поэтому он требует постоянного присутствия ауры.";
	case 720:
		return "Очень энергичное, гибкое, сильное, неутомимое, ловкое существо, которое живет только для того, чтобы заниматься в спортзале или путешествовать по миру без остановки, он любит соревноваться и чувствовать, что он лучше и лучше, чем он сам и другие; Его единственная цель - забивать голы, он обладает непревзойденным здоровьем, но находится во власти множественных травм.##Он бежит и ничем не быстрее, чем кто-либо другой, что дает ему большую мобильность на поле боя, он также может нанести сильный удар при первой атаке, например, выпад с его накопленной инерцией.";
	case 721:
		return "Азартные игры, шахматы, китайские шашки, лестница, парки, покер, уно, магия, шарады и многое другое, которые вы найдете здесь, в здании этого дружелюбного, общительного и счастливого персонажа; Нет ничего лучше досуга и смеха, но будьте осторожны, вы становитесь зависимыми, хахаха.##Как русская рулетка, эта роль несет в себе мощную бомбу, с помощью которой она может отделять мясо от кости, от себя, от своих союзников и, конечно, от врага; взрыв случайный, когда он получает урон.";
	case 722:
		return "Здоровое общество выражает свою сексуальность без табу и крайностей морали, здесь эта роль предлагает место для эротических игр, либо с репродуктивным духом, либо, что еще лучше, для досуга; И как будто этого было мало, она предоставляет свои услуги как особая компания (со свободой выбора).##Выберите только одного союзника и зажгите их, дав им больше очков жизни, очков атаки и невосприимчивости к эффектам других ролей; Это последует, и когда один из двух умрет, связь с его преимуществами разорвется навсегда; слабость просвещенного союзника - его основной спутник.";
	case 723:
		return "Продукция, произведенная на производстве, должна продаваться, продаваться, это функция этой роли, которая также знает, как идти на хорошие компромиссы из-за своей харизмы, потому что в трудные времена не всегда есть деньги; его строительство - хобби для тех, кто ищет мало нужные гаджеты; он знаток состояния, добывает монеты там, где их нет.##Вы можете взять у врага оружие и плащи и оставить их себе или отдать союзнику; он в основном превращает вражеское производство в товары для союзников.";
	case 724:
		return "У него есть навязчивая идея видеть все в чистоте, он очень заботится об утилизации отходов, его девиз - «Уменьшить, повторно использовать, переработать»; Потому что это помогает уменьшить загрязнение; ему нравится видеть мусорные баки, отсортированные по бумаге, пластику, электронике и органике, поскольку это сокращает объем работы в его здании; он также косит газон.##Война оставляет много разложившихся трупов, полный беспорядок, эта роль получает немного жизни с каждым трупом, который она обрабатывает.";
	case 725:
		return "Городу нужны парки и природные заповедники для удовольствия, отдыха и связи с фауной и флорой; Это существо охраняет эти пространства и тут же ведет жизнь несколько оторванную от города; в его крови есть определенная доза галлюциногенных грибов.##Он может под давлением мирного протеста отнять у врагов их роль, лишив их особых способностей, это он делает по одному каждый раз, когда активирует свою способность.";
	case 726:
		return "Отношения человека с другими существами в природе древние, такие как вьючные животные, охота, товарищеские отношения, потребление; Эта роль выращивает собак, приручает и обучает их, чтобы они служили компанией для самых разных людей, мы все знаем, что есть те, кто даже видит в них членов семьи.##Когда он видит врага, он может позвать только собаку, чтобы помочь ему сразиться, это существо всегда будет следовать за ним, у него меньше атак и жизни, чем у человека, и обычно он умирает от моральной боли, если его хозяин умирает.";
	case 727:
		return "Мы живем в физическом мире, с расстояниями, разделяющими все точки, транспортировка чего-либо или кого-то из пункта А в пункт Б всегда была проблемой оптимизации, воздушный шар или дирижабли были оптимальным летательным аппаратом; в этом здании они предоставляют свои услуги для преодоления больших расстояний.##Раздайте союзникам воздушные шары, когда они находятся в воде, так они быстрее доберутся до места назначения, на суше воздушный шар опускается; Следует подчеркнуть, что водный бой дает преимущество тем, кто летает на воздушном шаре.";
	case 728:
		return "Вы хотите выразить что-то кому-то, эмоцию, идею или дело, но это далеко, что ж, эта роль и построение позволяют вам передать это сообщение в руки экспертов, как если бы телеграф существовал.##Стратегический, если его поведение направлено на защиту: оно убеждает защищающихся союзников атаковать соседнего врага, не пренебрегая защитой; если их поведение состоит в том, чтобы следовать за кем-то: это будет побуждать союзников защищать уязвимый центр или, скорее, тех, кто защищает нападение группами; для другого поведения: это заставит союзников вести себя так же, как он.##Достигнув вражеского центра только один раз, он переместит юнит в очереди создания из этого центра в свой собственный.";
	case 729:
		return "Смесь учителя и художника, так как ему нравится преподавать и передавать знания, а также ему нравится писать реальные или нереальные вещи; его здание полно книг по всем предметам, науке, литературе, духовности, биографиям, истории, философии, образу жизни и т.##д. Удачи союзным атакам, нанося удары по одному; этот бафф очень продолжительный и имеет высокий шанс критического удара, потому что знание - сила.";
	case 730:
		return "Он предлагает энергию, управления пожарами давно нет, что нового - это область молний (по крайней мере, на это смоделированное время), ветряные турбины предлагают чистую энергию для всех, и что с этим делать? Что ж, мечтой человечества было создать гомункула, голема; Сделаем жесть с искусственным интеллектом.##Создайте робота, у него ограниченный срок службы из-за батарей, но любой союзник с этой ролью может их заменить; гигант, но не атакует, все же это стойкая приманка и в первую очередь способна разрушить башню; он слабеет от воды, он ведет себя как кто-то, кто его запрограммировал или перепрограммировал.";
	case 731:
		return "Каким было бы общество без зданий, будь то хижина или небоскреб, это существо создает самый большой и самый густонаселенный город, не забывая при этом, что его цель - обеспечить комфорт, функциональность, оптимизацию и меньшее воздействие на окружающую среду; предоставляет здание для проживания нескольких горожан.##На поле боя можно поставить походную башню, которая стреляет по врагу, она не подвергается нападению горожан из-за ее прочности; Вместо того, чтобы делать новый, вы можете повысить уровень существующего.";
	case 732:
		return "Не все, кто живет в обществе, работают над его улучшением, есть те, кто по личным причинам создает конфликты, воры, убийцы, гангстеры, они сложные субъекты и обычно встречаются по ночам, пьющими пиво, смешиваясь с честными гражданами.##Время от времени они вероломно нападают на своих союзников, обычно это сильный удар от неожиданности; есть небольшой шанс получить обратно урон, в основном эту роль выбирает тот, кто хочет саботировать область изнутри.";
	case 733:
		return "Говорят, что эти субъекты сумасшедшие, они исследуют все, что видят, от глубин космоса до интимности молекул, их язык - математика, а их лексика сложна; В здании, которое они предоставляют, обычно проводится множество экспериментов для проверки гипотез.##В своих флаконах они культивировали очень смертоносный вирус, способный убивать и передавать себя, теперь они используют его на войне, чтобы заразить одного врага за раз; эта атака похожа на яд, есть шанс вылечиться или получить урон.";
	case 734:
		return "Оборона:#юниты ищут свой собственный или союзный городской центр и держатся близко к нему, когда идет война за континенты, они могут увидеть, осажден ли центр, и направиться к нему.##Случайная атака:#они случайным образом выберут вражеский центр и пойдут к нему, это может вызвать рассредоточение войск, также есть определенные случаи, в которых пункт назначения может быть пересчитан.##Атакуйте самых сильных / самых слабых:#они нацелены на центр противника, у которого есть наибольшее / наименьшее количество доступных юнитов, то есть добавляют живых к резервным.";
	case 735:
		return "Атаковать соседа:#гарантирует, что центр целевого врага находится ближе всего к юниту, который в данный момент ищет, кого атаковать.##Перемещение в группе:#центры вычисляют несколько кругов групп, единицы указанного центра, которые имеют такое поведение, будут встречаться в одном из этих кругов; также в режиме «Континент» юниты могут выбирать союзный круг.##Следуйте за другим отрядом:#союзный гражданин выбирается случайным образом, чтобы следовать за ним, но это не должно быть защитным или сторонним поведением; Более того, если он кого-то не найдет, он будет стремиться вернуться в свой городской центр.";
	case 736:
		return "Этот софт неспешный, со стратегиями и редакциями профиля обращаются спокойно, поэтому глобальная статистика обновляется каждый час, а также возможность редактирования профиля.##Внесенные вами изменения будут видны в статистике через 1 час!";
	case 737:
		return "Вверху вы можете выбрать область или страну для наблюдения, выбор будет отображаться на карте красным цветом.##Под картой вы можете увидеть:#- Количество пользователей в районе.##- Процент женщин по отношению к общему количеству.#- Количество активных пользователей.#- Запись активных пользователей.#Пользователь активен, если он был в приложении на прошлой неделе.";
	case 738:
		return "Вы можете изменить тип данных для наблюдения для выбранной области:#- Роли: пользователи в каждой роли.##- Зоны: относительно текущей зоны.##- Эмоции: по лицам аватара.#- Зодиак: знаки зоны.#Идея состоит в том, чтобы увидеть роли, но не поведение, таким образом, можно создать объективную коллективную стратегию для ролей, а также интуитивную или внешнюю для поведения.#- Кнопка сохранения позволяет экспортировать данные.#- Кнопка камеры делает снимок экрана.";
	case 739:
		return "Выше количество симуляций:#Еженедельно (будет убрано) / Накоплено.##Вы можете выбрать область, которую хотите наблюдать, это будет отображаться на карте красным цветом.##Первая симуляция недели - официальная, остальные - усредненные, а рекорд - за все время.##В данных указано положение зоны, 1 - лучшее место, их можно повторить, если они совпадают.##Иконки: технический счет, охота на врагов, завершение осады, захваченные зоны, время жизни, доступные юниты, общее количество юнитов, конечная жизнь.";
	case 740:
		return "4 кнопки внизу начинают войну:#1 Демо со случайными данными.##2 Демо с пользовательскими данными.##3 Официальные данные но перестрелки.##4 Официальные данные и результаты.#- Режим страны / континентальный режим.#- Кнопка камеры делает снимок экрана.#Пользовательские данные имеют формат файла (txt), полученного в меню статистики.#Официальная война будет на черном экране, результаты будут загружены на сервер, чтобы избежать завершения моделирования в удобное для вас время.";
	case 741:
		return "Получите файл (txt), как указано в меню статистики.##В нем вы увидите несколько матриц, нас интересует одна из (роль), там вы можете изменить значения в зависимости от того, сколько единиц вы хотите в каждой, для каждой зоны.##Столбцы - это роли, которые вы видите в заголовке (роли).##Строки - это зоны, как вы видите их в заголовке (страны).#Поведение всегда будет случайным; затем (активное население) определяет активных пользователей, если хотите, укажите очень большое число.";
	case 742:
		return "- Увеличьте масштаб с помощью колеса мыши.##- Переместите камеру правой кнопкой мыши.##- Выберите объекты щелчком левой кнопки мыши.#- Выйдите из симуляции с помощью Escape.#- Ускорение или замедление с помощью кнопок «Вверх» и «Вниз».#Вверху слева: общая информация, конечная скорость будет зависеть от вашего ПК, официальных данных или нет.#Вверху справа: общая информация: максимальная численность населения, живые единицы, живые существа, запись о живых существах, общее количество созданных сущностей.#Затем лучшие 3 в зависимости от: доступных юнитов, охоты на врагов, завершения осады, захвата территорий.#Наконец, позиции по живучести. Внизу слева контекстный (выбор).";
	case 743:
		return "Пол и зодиак не влияют на симуляцию, но в активном состоянии даются бонусы жизни.##Сущности могут перемещаться по суше или воде, последнее замедляет движение и атаку; они могут идти навстречу противнику, союзнику или центру города, также обнаруживаются столкновения.##Время от времени они будут искать врагов в пределах своей видимости и атаковать, если они будут близко, с небольшой случайностью; также время от времени будут выполняться особые способности каждой роли.##Роли, которые применяют эффекты к другим юнитам, не могут быть применены сами по себе, и они не влияют на союзников или врагов той же роли, например: медик не может лечить или лечить другого медика.";
	case 744:
		return "В каждом городском центре есть начальное население, которое может иметь только лимит жилых единиц одновременно, и оно будет вызывать больше как.##Очки жизни каждого центра - это базовое значение плюс начальная численность населения, время от времени подсчитывается количество ближайших врагов и союзников, полученная осада - это разница с лимитом.##Роли юнитов выбираются случайным образом с приоритетом, поведение меняется только случайным образом.##Каждый центр вычисляет положение нескольких групповых кругов, он делает это путем поиска группировок юнитов, вражеских центров и вражеских групп.";
	case 745:
		return "Для более быстрой навигации используйте клавиши влево / вправо; нажмите Enter, чтобы перейти на случайную страницу, Пробел для случайной роли.##Число на картинке на первой странице - это общее количество зарегистрированных пользователей.##Примечание:#";

	// mini nombre de zona
	case 900:
		return "Собака";
	case 901:
		return "ИСПОЛЬЗОВАНИЕ";
	case 902:
		return "Мексика";
	case 903:
		return "Капуста";
	case 904:
		return "Бюстгальтер";
	case 905:
		return "Arg";
	case 906:
		return "Esp";
	case 907:
		return "Ing";
	case 908:
		return "Эль";
	case 909:
		return "Русь";
	case 910:
		return "Ара";
	case 911:
		return "Ind";
	case 912:
		return "Чи";
	case 913:
		return "Egi";
	case 914:
		return "С";
	case 915:
		return "юг";
	case 916:
		return "Aus";
	case 917:
		return "N.A";
	case 918:
		return "S.A";
	case 919:
		return "евро";
	case 920:
		return "ORI";
	case 921:
		return "AFR";
	case 922:
		return "ТОТ";

	// para nombres de comportamientos abreviados (no traducir)
	case 1000:
		return "Защищать";
	case 1001:
		return "А.аза";
	case 1002:
		return "А. был";
	case 1003:
		return "A.deb";
	case 1004:
		return "A.cer";
	case 1005:
		return "Группа";
	case 1006:
		return "Сегуи";

	// abreviacion roles (no traducir)
	case 1100:
		return "Семья";
	case 1101:
		return "Агри";
	case 1102:
		return "Приготовлено";
	case 1103:
		return "Изобразительное искусство";
	case 1104:
		return "Мой";
	case 1105:
		return "Herr";
	case 1106:
		return "Medi";
	case 1107:
		return "Лидер";
	case 1108:
		return "Defe";
	case 1109:
		return "Guer";
	case 1110:
		return "Cepu";
	case 1111:
		return "Волшебник";
	case 1112:
		return "Sace";
	case 1113:
		return "Арти";
	case 1114:
		return "Депо";
	case 1115:
		return "Пайя";
	case 1116:
		return "Acom";
	case 1117:
		return "Есть";
	case 1118:
		return "Чистый";
	case 1119:
		return "Хипп";
	case 1120:
		return "Купол";
	case 1121:
		return "Pilo";
	case 1122:
		return "Мужской";
	case 1123:
		return "Письмо";
	case 1124:
		return "Инге";
	case 1125:
		return "Арка";
	case 1126:
		return "Тузы";
	case 1127:
		return "Сотня";

	default: return "";
}

