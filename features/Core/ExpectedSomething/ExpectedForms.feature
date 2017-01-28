﻿# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn837
@IgnoreOn839




Функционал: Автоматизированное получение изменения состояния формы

Как Разработчик я хочу
Чтобы у меня был функционал для получения шагов Gherkin при изменении формы
Для того чтобы я мог использовать их в своих сценариях без программирования



Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда я удаляю все элементы Справочника "Справочник1"
	Когда я создаю fixtures по макету "Макет"
	
	
	
Сценарий: Я получаю изменения формы в виде сценария Gherkin
	
#Область Создание элементов шапки	

	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И     Я нажимаю кнопку командного интерфейса "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В форме "Справочник1" в таблице "Список" я перехожу к строке:
		| Код       | Наименование       |
		| 000000002 | Тестовый Элемент 2 |
	И     В форме "Справочник1" в ТЧ "Список" я выбираю текущую строку
	И     открылось окно "Тестовый Элемент * (Справочник1)"
#	И     В открытой форме я открываю выпадающий список с заголовком "Реквизит1"
	И     В открытой форме из выпадающего списка с именем "Реквизит1" я выбираю "ЗначениеПеречисления1"
	И     В открытой форме я выбираю значение реквизита с заголовком "Реквизит2" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Тестовый Элемент * (Справочник1) *"
	И     В открытой форме в поле с именем "РеквизитЧисло" я ввожу текст "12.34"
	И     В открытой форме в поле с именем "РеквизитСтрока" я ввожу текст "тест"
	И     В открытой форме в поле с именем "РеквизитДата" я ввожу текст "08.04.1981"
	И     В открытой форме я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме я меняю значение переключателя с заголовком "Реквизит переключатель" на "Первое значение"
	
#КонецОбласти

#Область Создание элементов ТЧ	
	
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку с заголовком "Добавить"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит число" я ввожу текст "56,78"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит строка" я ввожу текст "ТестСтрока"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит дата" я ввожу текст "11.09.1983"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" из выпадающего списка с заголовком "Реквизит справочник" я выбираю "ТестовыйЭлемент21"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я выбираю значение реквизита с заголовком "Реквизит справочник выбор из формы списка" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку
	
#КонецОбласти	
	
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать"

#Область Проверка значений элементов формы
	Тогда элемент формы с именем "Код" стал равен "000000002"
	И     элемент формы с именем "Наименование" стал равен "Тестовый Элемент 2"
	И     элемент формы с именем "Реквизит1" стал равен "ЗначениеПеречисления1"
	И     элемент формы с именем "Реквизит2" стал равен "ТестовыйЭлемент21"
	И     элемент формы с именем "РеквизитЧисло" стал равен "12,34"
	И     элемент формы с именем "РеквизитСтрока" стал равен "тест"
	И     элемент формы с именем "РеквизитДата" стал равен "08.04.1981 0:00:00"
	И     элемент формы с именем "РеквизитБулево" стал равен "Да"
	И     элемент формы с именем "РеквизитПереключатель" стал равен "1"
	И     таблица формы с именем "ТабличнаяЧасть1" стала равной:
		| 'N' | 'Реквизит число' | 'Реквизит число' | 'Реквизит строка' | 'Реквизит дата' | 'Реквизит справочник выбор из формы списка' | 'Реквизит справочник' | 'Реквизит булево' |
		| '1' | '56,78'          |  '56,78'         | 'ТестСтрока'      | '11.09.1983'    | 'ТестовыйЭлемент21'                         | 'ТестовыйЭлемент21'   | 'Да'              |
	
	И     таблица формы с именем "ТабличнаяЧасть1" содержит строки:
		| 'N' | 'Реквизит число' | 'Реквизит строка' | 'Реквизит дата' | 'Реквизит справочник выбор из формы списка' | 'Реквизит справочник' | 'Реквизит булево' |
		| '1' | '56,78'          | 'ТестСтрока'      | '11.09.1983'    | 'ТестовыйЭлемент21'                         | 'ТестовыйЭлемент21'   | 'Да'              |	

	И     таблица формы с именем "ТабличнаяЧасть1" содержит строки:
		| 'N' | 'Реквизит число' | 'Реквизит строка' | 'Реквизит дата' | 'Реквизит справочник выбор из формы списка' | 'Реквизит справочник' | 'Реквизит булево' |
		| '1' | '56,7*'          | '*'               | '11.09.1983'    | 'ТестовыйЭлемент*'                         | 'ТестовыйЭлемент21'   | 'Да'              |			
# Реквизит число специально указан два раза
		
		
	Тогда таблица формы с именем "ТабличнаяЧасть1" содержит изменения:
		| 'Реквизит число' |
		| '56,78'          |


		
		
	И     элемент формы с именем "Код1" стал равен "000000002"
	И     элемент формы с именем "Наименование2" стал равен "Тестовый Элемент 2"
	И     элемент формы с именем "Наименование1" стал равен "Тестовый Элемент 2"
	И     элемент формы с именем "Реквизит3" стал равен "ЗначениеПеречисления1"	

#КонецОбласти	
	
	И     Я нажмаю на кнопку Vanessa-Behavior "Забыть состояние формы TestClient"
	И     Я нажмаю на кнопку Vanessa-Behavior "ПолучитьИзмененияФормыGherkin"
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"

	
#Область Проверка созданного кода Gherkin по изменениям элементов формы
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "Код" стал равен "000000002"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "Наименование" стал равен "Тестовый Элемент 2"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "Реквизит1" стал равен "ЗначениеПеречисления1"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "Реквизит2" стал равен "ТестовыйЭлемент21"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "РеквизитЧисло" стал равен "12,34"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "РеквизитСтрока" стал равен "тест"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "РеквизитДата" стал равен "08.04.1981 0:00:00"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "РеквизитБулево" стал равен "Да"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "РеквизитПереключатель" стал равен "1"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'таблица формы с именем "ТабличнаяЧасть1" стала равной:'
#	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка '| 'N' | 'Реквизит число' | 'Реквизит строка' | 'Реквизит дата' | 'Реквизит справочник выбор из формы списка' | 'Реквизит справочник' | 'Реквизит булево' |'
#	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка '| '1' | '56,78'          | 'ТестСтрока'      | '11.09.1983'    | 'ТестовыйЭлемент21'                         | 'ТестовыйЭлемент21'   | 'Да'              |'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "Код1" стал равен "000000002"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "Наименование2" стал равен "Тестовый Элемент 2"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "Наименование1" стал равен "Тестовый Элемент 2"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'элемент формы с именем "Реквизит3" стал равен "ЗначениеПеречисления1"'

#КонецОбласти		
	