﻿#language: ru

@tree
@Exportscenarios
@IngoreONCIMainBild

Функционал: Загрузка Товаров Поставщиков Покупателей для тестирования отчета Остатки

Сценарий: Загрузка Товаров Поставщиков Покупателей для тестирования отчета Остатки
	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'                   | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город' | 'Улица'  | 'Дом' | 'Телефон'      | 'ЭлектроннаяПочта' | 'Факс' | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта' | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=935b60dd8ed5021d11ee560594b26cf2' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '200000013' | 'Постащик1 Тест Отчет Остатки'   | 'e1cib/data/Справочник.Регионы?ref=935b60dd8ed5021d11ee560594b26cf1' | ''       | 'Россия' | 'Сочи'  | 'Бытха'  | '256' | '+78622568945' | ''                 | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | ''               |          |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=935b60dd8ed5021d11ee560594b26cf4' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '200000014' | 'Постащик2 Тест Отчет Остатки'   | 'e1cib/data/Справочник.Регионы?ref=935b60dd8ed5021d11ee560594b26cf3' | ''       | 'Россия' | 'Истра' | 'Ленина' | '10'  | '+79287295869' | ''                 | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | ''               |          |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=935b60dd8ed5021d11ee560594b26cf7' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '200000015' | 'Покупатель1 Тест Отчет Остатки' | ''                                                                   | ''       | ''       | ''      | ''       | ''    | ''             | ''                 | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | ''               |          |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=935b60dd8ed5021d11ee560594b26cf8' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '200000016' | 'Покупатель2 Тест Отчет Остатки' | ''                                                                   | ''       | ''       | ''      | ''       | ''    | ''             | ''                 | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | ''               |          |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'                     | ''                                                                   | ''       | ''       | ''      | ''       | ''    | ''             | ''                 | ''     | ''        | ''                                                                   | ''                         | ''               | ''       | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'                     | ''                                                                   | ''       | ''       | ''      | ''       | ''    | ''             | ''                 | ''     | ''        | ''                                                                   | ''                         | ''               | ''       | ''        |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование'       |
		| 'e1cib/data/Справочник.Регионы?ref=935b60dd8ed5021d11ee560594b26cf1' | 'False'           | '000000007' | 'Краснодарский край' |
		| 'e1cib/data/Справочник.Регионы?ref=935b60dd8ed5021d11ee560594b26cf3' | 'False'           | '000000008' | 'Московская область' |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул'    | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                    | 'Штрихкод' | 'Описание' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=935b60dd8ed5021d11ee560594b26cf5' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000101' | 'Булочка'      | 'Lhjgg456'   | 'e1cib/data/Справочник.Контрагенты?ref=935b60dd8ed5021d11ee560594b26cf2' | ''             | 'Enum.ВидыТоваров.Товар' | ''         | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=935b60dd8ed5021d11ee560594b26cf6' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000102' | 'Печенье'      | 'kjgjfx8964' | 'e1cib/data/Справочник.Контрагенты?ref=935b60dd8ed5021d11ee560594b26cf4' | ''             | 'Enum.ВидыТоваров.Товар' | ''         | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'           | ''                                                                  | 'True'      | '000000011' | 'Продукты'     | ''           | ''                                                                       | ''             | ''                       | ''         | ''         | ''       |


