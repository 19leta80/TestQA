﻿#language: ru

@tree

Функционал:  Добавлении Услуги в документ Заказ Изменение количества 

Как Менеджер по продажам я хочу
изменить внести новую услугу в документ Заказ, указав количество
чтобы продать товар

Контекст:

Дано Я открыл новый сеанс TestClient или подключил уже существующий
И я закрываю все окна клиентского приложения

Сценарий: Добавлении Услуги в документ Заказ изменение количества

* Открытие определенного Заказа

	И Я открываю навигационную ссылку "e1cib/data/Документ.Заказ?ref=bbf30050ba5c887711e1fe6190994fe7"

* Добавление новой услуги в табличную часть Товары

	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000031' | 'Босоножки'    |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в текущее поле я ввожу текст '10'
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаПровести'
		
* Изменение количества в добавленной услуге

	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в текущее поле я ввожу текст '10'
	Тогда текст текущей ячейки таблицы "Товары" стал равен "10"
	И в таблице "Товары" я завершаю редактирование строки

* Удаление добаленной услуги
	
	И в таблице "Товары" я перехожу к последней строке
	И в таблице "Товары" я выбираю текущую строку
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюУдалить' на элементе формы с именем "Товары"
	И я нажимаю на кнопку с именем 'ФормаПровести'
		

	






