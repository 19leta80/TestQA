﻿#language: ru

@tree

Функционал: Проверка редактирования поля Количество в документе Заказ покупателя

Как Тестировщик я хочу
протестировать изменение поля Количество при редактировании Заказа покупателя
чтобы все работало корректно

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: Подготовительный сценарий 
* Загружаю Заказ клиента с табличной частью в которой есть Услуга
	Когда экспорт Заказа покупателя для проверки редактирования количества в табличной части товары

Сценарий: Проверка добавления услуги в документ Заказ покупателя
	* Открываю созданный Заказ клиента
		Дано Я открываю навигационную ссылку "e1cib/data/Документ.Заказ?ref=933a60dd8ed5021d11ee1853b4850124"
	* Добавляю строку с услугой с табличную часть товары
		И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
		И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Доставка'
		И в таблице "Товары" я завершаю редактирование строки
		И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		И в таблице "Товары" я выбираю текущую строку
		И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'
		И в таблице "Товары" я завершаю редактирование строки
		И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	* Проверяю что общее количество в Заказе изменилось
		И Я открываю навигационную ссылку "e1cib/data/Документ.Заказ?ref=933a60dd8ed5021d11ee1853b4850124"
		Тогда элемент формы с именем 'ТоварыИтогКоличество' стал равен '13'
	* Проверяю что в табличной части поле количество изменилось
		Тогда таблица "Товары" стала равной:
			| 'Товар'     | 'Цена'     | 'Количество' | 'Сумма'     |
			| 'Сапоги'    | '3 500,00' | '1'          | '17 500,00' |
			| 'Босоножки' | '2 500,00' | '1'          | '25 000,00' |
			| 'Туфли'     | '2 500,00' | '1'          | '17 500,00' |
			| 'Доставка'  | '300,00'   | '10'         | '300,00'    |

Сценарий: Проверка редактирования поля Количество в Заказе клиента
* Редактирую количество во всех строках табличной части Товары
	И Я открываю навигационную ссылку "e1cib/data/Документ.Заказ?ref=933a60dd8ed5021d11ee1853b4850124"
	И для каждой строки таблицы "Товары" я выполняю
		И в таблице "Товары" в поле 'Количество' я ввожу текст '2'
* Проверяю что количество и сумма изменилась
	Тогда таблица "Товары" стала равной:
		| 'Товар'     | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Сапоги'    | '3 500,00' | '2'          | '7 000,00' |
		| 'Босоножки' | '2 500,00' | '2'          | '5 000,00' |
		| 'Туфли'     | '2 500,00' | '2'          | '5 000,00' |
		| 'Доставка'  | '300,00'   | '2'          | '600,00'   |
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
