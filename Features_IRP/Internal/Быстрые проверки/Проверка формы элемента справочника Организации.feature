﻿#language: ru

@tree
@быстрые проверки

Функционал: Проверка формы элемента справочника Организации

Как Тестировщик я хочу
Проверить доступность вкладок Налоги и Валюты
чтобы убедиться что пользователь не ошибется при вводе данных

Сценарий: Проверка доступности вкладок Налоги и Валюты в справочнике Организации

* Открытие элемента справочника организации
	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Организация (создание)'
* Установка галочки наша компания и проверка присутствия на форме Валют и Налогов
	И я устанавливаю флаг с именем 'OurCompany'
	И элемент формы "Валюты" присутствует на форме
	И элемент формы "Вид налога" присутствует на форме
* Снятие галочки наша компания и проверка отсутствия на форме Валют и Налогов
	И я снимаю флаг с именем 'OurCompany'
	И элемент формы "Валюты" существует и невидим на форме
	И элемент формы "Вид налога" существует и невидим на форме
		
			