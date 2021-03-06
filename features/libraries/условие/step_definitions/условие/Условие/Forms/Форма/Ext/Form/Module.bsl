﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"Тогда(Парам01)","Условие","Если ""Истина"" тогда","Условие. Проверяет выражение встроенного языка","Встроенный язык","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВОкнеПредупрежденияНетТекстаТогда(Парам01)","ВОкнеПредупрежденияНетТекстаТогда","Если в окне предупреждения нет текста ""Нужный текст"" тогда","Условие. Истинно, когда в окне предупреждения нет искомого текста.","UI.Всплывающие окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВызываюИсключение(Парам01)","ЯВызываюИсключение","Тогда я вызываю исключение ""Текст исключения""","Вызывает исключение с нужным текстом","Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПоявилосьОкноСЗаголовкомТогда(Парам01)","ПоявилосьОкноСЗаголовкомТогда","Если появилось окно с заголовком ""ИмяОкна"" Тогда","Условие. Проверяет, что на экране есть активное окно с нужным заголовком","UI.Окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВерсияПлатформыТогда(Парам01,Парам02)","ВерсияПлатформыТогда","Если Версия платформы "">="" ""8.3.6"" Тогда","Условие. Проверяет версию платформы","Прочее","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПолеИмеетЗначениеТогда(Парам01,Парам02)","ПолеИмеетЗначениеТогда","Если поле ""ИмяПоля"" имеет значение ""тест"" тогда","Условие. Проверяет значение поля.","UI.Формы.Поля.Проверка значения поля","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПолеСИменемИмеетЗначениеТогда(Парам01,Парам02)","ПолеСИменемИмеетЗначениеТогда","Если поле с именем ""ИмяПоля"" имеет значение ""тест"" тогда","Условие. Проверяет значение поля.","UI.Формы.Поля.Проверка значения поля","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеЕстьСтрокаТогда(Парам01,ТабПарам)","ВТаблицеЕстьСтрокаТогда","Если в таблице ""ИмяТаблицы"" есть строка Тогда" + Символы.ПС + Символы.Таб + "| 'Реквизит строка' |" + Символы.ПС + Символы.Таб + "| '2'               |","Условие. Истинно, если в таблице есть нужная строка/строки.","UI.Таблицы.Проверка значения таблицы","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЭлементНеПрисутствуетНаФормеТогда(Парам01)","ЭлементНеПрисутствуетНаФормеТогда","Если элемент ""ИмяЭлементаФормы"" не присутствует на форме Тогда","Условие. Проверяет видимость элемента на форме. Поиск поля производится по имени.","UI.Формы.Поля","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЭлементПрисутствуетНаФормеТогда(Парам01)","ЭлементПрисутствуетНаФормеТогда","Если элемент ""ИмяЭлементаФормы"" присутствует на форме Тогда","Условие. Проверяет видимость элемента на форме. Поиск поля производится по имени.","UI.Формы.Поля","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТекущееОкноОжидаемомуОкнуТогда(Парам01,Парам02)","ТекущееОкноОжидаемомуОкнуТогда","Если текущее окно ""не равно"" ожидаемому окну ""НужноеОкно"" Тогда","Условие. Проверяет что текущее окно равно/неравно нужному окну, которое запомнили ранее","UI.Окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТекущемОкнеЕстьСообщенияПользователюТогда()","ВТекущемОкнеЕстьСообщенияПользователюТогда","Если в текущем окне есть сообщения пользователю Тогда","Условие. Проверяет, что в текущем окне есть сообщения пользователю.","UI.Сообщения пользователю","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ИмяТекущейФормыТогда(Парам01)","ИмяТекущейФормыТогда","Если имя текущей формы ""ПечатьДокументов"" Тогда","Условие. Проверяет имя текущей формы","UI.Формы.Имя формы","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПоявилосьОкноСЗаголовкомИзТаблицыТогда(ТабПарам)","ПоявилосьОкноСЗаголовкомИзТаблицыТогда","Если появилось окно с заголовком из таблицы  Тогда","Условие. Проверяет, что есть окно с заголовком из таблицы","UI.Окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЭтоНеНачальнаяСтраницаТогда()","ЭтоНеНачальнаяСтраницаТогда","Если это не начальная страница Тогда","Условие. Проверяет, то текущее окно это не начальная страница","UI.Окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПеременнаяИмеетЗначениеТогда(Парам01,Парам02)","ПеременнаяИмеетЗначениеТогда","Если переменная ""ИмяПеременной"" имеет значение ""ЗначениеПеременной"" Тогда","Условие. Проверяет значение переменной контекста","Контекст.Контекст.Прочитать значение","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСообщенияхПользователюЕстьСтрокаТогда(Парам01)","ВСообщенияхПользователюЕстьСтрокаТогда","Если в сообщениях пользователю есть строка ""МояСтрока"" Тогда","Условие. Проверяет, что в сообщениях пользователю содержится нужная строка или подстрока.","UI.Сообщения пользователю","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеЕстьКолонкиТогда(Парам01,ТабПарам)","ВТаблицеЕстьКолонкиТогда","Если в таблице ""Результат"" есть колонки Тогда" + Символы.ПС + "	| 'Колонка1' |" + Символы.ПС + "	| 'Колонка2' |","Условие. Проверяет, есть ли в таблице указанные колоноки. Заголовки колонок надо передать в шаг в виде таблицы Gherkin.","UI.Таблицы.Проверка состава колонок","Условие");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции


&НаКлиенте
Функция ДобавитьНулейСлева(Стр,КолНулей)
	Пока СтрДлина(Стр) < КолНулей Цикл
		Стр = "0" + Стр;
	КонецЦикла;	
	
	Возврат Стр;
КонецФункции	

&НаКлиенте
Процедура ПреобразоватьСтрокуВерсии(Стр)
	Массив = Ванесса.РазложитьСтрокуВМассивПодстрок(Стр, ".");
	Пока Массив.Количество() < 4 Цикл
		Массив.Добавить("0");
	КонецЦикла;	
	
	Для Ккк = 0 По Массив.Количество()-1 Цикл
		Массив[Ккк] = ДобавитьНулейСлева(Массив[Ккк],10);
	КонецЦикла;	
	
	
	Стр = "";
	Для Каждого Элем Из Массив Цикл
		Стр = Стр + Элем + ".";
	КонецЦикла;	
	
	//убрали лишнюю точку
	Стр = Лев(Стр,СтрДлина(Стр)-1);
КонецПроцедуры


///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Если "Истина" тогда
//@Тогда(Парам01)
Процедура Условие(Выражение) Экспорт
	Результат = Вычислить(Выражение);
	Если Результат Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Если в окне предупреждения нет текста "Нужный текст" тогда
//@ВОкнеПредупрежденияНетТекстаТогда(Парам01)
Процедура ВОкнеПредупрежденияНетТекстаТогда(ИскомыйТекст) Экспорт
	ОкноПредупреждения = Ванесса.НайтиОкноПредупреждения();
	Если ОкноПредупреждения = Неопределено Тогда
		ВызватьИсключение "Не найдено окно предупреждения";
	КонецЕсли;	 
	
	ТекстПредупреждения = Ванесса.ПолучитьТекстОкнаПредупреждения(ОкноПредупреждения);
	
	
	Если Найти(НРег(ТекстПредупреждения),НРег(ИскомыйТекст)) = 0 Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
	
	
КонецПроцедуры


&НаКлиенте
//Тогда я вызываю исключение "Текст исключения"
//@ЯВызываюИсключение(Парам01)
Процедура ЯВызываюИсключение(Текст) Экспорт
	Результат = Ванесса.ПолучитьСтрокуВычисливВнутренниеВыражения(Текст);	
	ВызватьИсключение Результат;
КонецПроцедуры

&НаКлиенте
//Если появилось окно с заголовком "ИмяОкна" Тогда
//@ПоявилосьОкноСЗаголовкомТогда(Парам01)
Процедура ПоявилосьОкноСЗаголовкомТогда(ЗаголовокОкна) Экспорт
	АктивноеОкно = Ванесса.НайтиОкноTestClientПоЗаголовку(ЗаголовокОкна);
	Если АктивноеОкно = Неопределено Тогда
		Ванесса.УстановитьРезультатУсловия(Ложь);
	Иначе
		Ванесса.УстановитьРезультатУсловия(Истина);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Если Версия платформы ">=" "8.3.6" Тогда
//@ВерсияПлатформыТогда(Парам01,Парам02)
Процедура ВерсияПлатформыТогда(Знач ВидСравнения,Знач НужнаяВерсия) Экспорт
	ВидСравнения = Ванесса.ПолучитьОператорПоТексту(ВидСравнения);
	
	СистемнаяИнформация = Новый СистемнаяИнформация;
	ТекущаяВерсия       = СистемнаяИнформация.ВерсияПриложения;
	
	ПреобразоватьСтрокуВерсии(ТекущаяВерсия);
	ПреобразоватьСтрокуВерсии(НужнаяВерсия);
	
	//Сообщить("ТекущаяВерсия="+ТекущаяВерсия);
	//Сообщить("НужнаяВерсия= "+НужнаяВерсия);
	
	
	ЗначениеСравнения = Неопределено;
	Выражение = "ЗначениеСравнения = (ТекущаяВерсия " + ВидСравнения + " НужнаяВерсия)";
	Выполнить(Выражение);
	Ванесса.УстановитьРезультатУсловия(ЗначениеСравнения);
КонецПроцедуры

&НаКлиенте
//Если поле "РеквизитСтрока" имеет значение "тест" тогда
//@ПолеИмеетЗначениеТогда(Парам01,Парам02)
Процедура ПолеИмеетЗначениеТогда(ИмяЭлемента,НужноеЗначение,ИскатьПоИмени = Ложь) Экспорт
	Значение = Ванесса.ПолучитьЗначениеРеквизитаОткрытойФормыПоЗаголовку(ИмяЭлемента,ИскатьПоИмени);
	Если Значение = НужноеЗначение Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Если поле с именем "РеквизитСтрока" имеет значение "тест" тогда
//@ПолеСИменемИмеетЗначениеТогда(Парам01,Парам02)
Процедура ПолеСИменемИмеетЗначениеТогда(ИмяЭлемента,НужноеЗначение) Экспорт
	ПолеИмеетЗначениеТогда(ИмяЭлемента,НужноеЗначение,Истина);
КонецПроцедуры

&НаКлиенте
//Если в таблице "ТабличнаяЧасть1" есть строка Тогда
//@ВТаблицеЕстьСтрокаТогда(Парам01,ТабПарам)
Процедура ВТаблицеЕстьСтрокаТогда(ИмяТЧ,ТабПарам) Экспорт
	ТЧ         = Ванесса.НайтиТЧПоИмени(ИмяТЧ);
	ЗначениеТЧ = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	
	СтрокаОшибки = "";
	СтрокаНайдена = Ванесса.СтрокиОжидаемойТаблицыСодержатсяВТаблицеTestclient(ТабПарам,ЗначениеТЧ,СтрокаОшибки);
	
	Ванесса.УстановитьРезультатУсловия(СтрокаНайдена);
	
	
	//КолСтрок = ТабПарам.Количество()-1;//без шапки
	//
	//
	//СтрокаШапки = ТабПарам[0];
	//
	//Для Ккк = 1 По ТабПарам.Количество()-1 Цикл //в первой строке шапка
	//	СтрСтарое  = ТабПарам[Ккк];
	//	СтрНовое   = ЗначениеТЧ[Ккк-1];
	//	
	//	Для каждого Колонка Из СтрокаШапки Цикл
	//		ИмяКолонкиСтарое = СтрокаШапки[Колонка.Ключ];
	//		
	//		
	//		ЗначСтарое = СтрСтарое[Колонка.Ключ];
	//		Если ЗначСтарое = "*" Тогда
	//			Продолжить;
	//		КонецЕсли;	 
	//		
	//		ЗначНовое  = СтрНовое[ИмяКолонкиСтарое];
	//		
	//		Если ЗначНовое <> ЗначСтарое Тогда
	//			ВызватьИсключение "ТЧ " + ИмяТЧ + ". Строка № " + (Ккк) + ". Колонка " + ИмяКолонкиСтарое + ". Ожидали <" + ЗначСтарое + ">, а получили <" + ЗначНовое + ">";
	//		КонецЕсли;	 
	//	КонецЦикла;
	//КонецЦикла;

КонецПроцедуры

&НаКлиенте
//Если элемент "СтраницаТекущаяПечатнаяФорма" не присутствует на форме Тогда
//@ЭлементНеПрисутствуетНаФормеТогда(Парам01)
Процедура ЭлементНеПрисутствуетНаФормеТогда(ИмяПоля) Экспорт
	Поле = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяПоля,Истина,Ложь);
	
	Если Поле = Неопределено Тогда
		//Значит поля нет вообще.
		Ванесса.УстановитьРезультатУсловия(Истина);
		Возврат;
	КонецЕсли;	 
	
	Ванесса.УстановитьРезультатУсловия(НЕ Поле.ТекущаяВидимость());
КонецПроцедуры

&НаКлиенте
//Если элемент "СтраницаТекущаяПечатнаяФорма" присутствует на форме Тогда
//@ЭлементПрисутствуетНаФормеТогда(Парам01)
Процедура ЭлементПрисутствуетНаФормеТогда(ИмяПоля) Экспорт
	Поле = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяПоля,Истина,Ложь);
	
	Если Поле = Неопределено Тогда
		//Значит поля нет вообще.
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Возврат;
	КонецЕсли;	 
	
	Ванесса.УстановитьРезультатУсловия(Поле.ТекущаяВидимость());
КонецПроцедуры

&НаКлиенте
//Если текущее окно "не равно" ожидаемому окну "НужноеОкно" Тогда
//@ТекущееОкноОжидаемомуОкнуТогда(Парам01,Парам02)
Процедура ТекущееОкноОжидаемомуОкнуТогда(Знач ВидСравнения,ИмяПеременной) Экспорт
	ВидСравнения = Ванесса.ПолучитьОператорПоТексту(ВидСравнения);
	
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	
	НужноеЗначениеЗаголовка = Контекст[ИмяПеременной];
	
	ЗначениеСравнения = Неопределено;
	Выражение = "ЗначениеСравнения = (АктивноеОкно.Заголовок " + ВидСравнения + " НужноеЗначениеЗаголовка)";
	Выполнить(Выражение);
	Ванесса.УстановитьРезультатУсловия(ЗначениеСравнения);
КонецПроцедуры

&НаКлиенте
//Если в текущем окне есть сообщения пользователю Тогда
//@ВТекущемОкнеЕстьСообщенияПользователюТогда()
Процедура ВТекущемОкнеЕстьСообщенияПользователюТогда() Экспорт
	АктивноеОкно    = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	Попытка
		МассивСообщений = АктивноеОкно.ПолучитьТекстыСообщенийПользователю();
	Исключение
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Возврат;
	КонецПопытки;
	
	Если МассивСообщений.Количество() > 0 Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	
	
КонецПроцедуры

&НаКлиенте
//Если имя текущей формы "ПечатьДокументов" Тогда
//@ИмяТекущейФормыТогда(Парам01)
Процедура ИмяТекущейФормыТогда(ИмяФормы) Экспорт
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	ТекФорма     = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяФорма"));
	
	Если ТекФорма.ИмяФормы = ИмяФормы Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецПроцедуры


&НаКлиенте
//Если появилось окно с заголовком из таблицы  Тогда
//@ПоявилосьОкноСЗаголовкомИзТаблицыТогда(ТабПарам)
Процедура ПоявилосьОкноСЗаголовкомИзТаблицыТогда(ТабПарам) Экспорт
	ВсеОкна = КонтекстСохраняемый.ТестовоеПриложение.НайтиОбъекты(Тип("ТестируемоеОкноКлиентскогоПриложения"));
	МассивЗаголовков = Новый Массив;
	
	Для Каждого ТекОкно Из ВсеОкна Цикл
		МассивЗаголовков.Добавить(НРег(ТекОкно.Заголовок));
	КонецЦикла;	
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		СтрокаПоиска = НРег(СтрокаТабПарам.Кол1);
		Для Каждого ЗаголовокОкна Из МассивЗаголовков Цикл
			Если Найти(ЗаголовокОкна,СтрокаПоиска) > 0 Тогда
				Ванесса.УстановитьРезультатУсловия(Истина);
				Возврат;
			КонецЕсли;	 
		КонецЦикла;	
	КонецЦикла;	
	
	Ванесса.УстановитьРезультатУсловия(Ложь);
КонецПроцедуры

&НаКлиенте
//Если это не начальная страница Тогда
//@ЭтоНеНачальнаяСтраницаТогда()
Процедура ЭтоНеНачальнаяСтраницаТогда() Экспорт
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	
	Если АктивноеОкно.НачальнаяСтраница Тогда
		Ванесса.УстановитьРезультатУсловия(Ложь);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Истина);
	КонецЕсли;	 
	
КонецПроцедуры

&НаКлиенте
//Если переменная "ЗначениеВариантЗаполненияСостава" имеет значение "Отбор" Тогда
//@ПеременнаяИмеетЗначениеТогда(Парам01,Парам02)
Процедура ПеременнаяИмеетЗначениеТогда(ИмяПеременной,Значение) Экспорт
	Если НЕ Контекст.Свойство(ИмяПеременной) Тогда
		ВызватьИсключение "Переменная <" + ИмяПеременной + "> не найдена.";
	КонецЕсли;
	
	ТекЗначение = Контекст[ИмяПеременной];
	Ванесса.УстановитьРезультатУсловия(ТекЗначение = Значение);
КонецПроцедуры

&НаКлиенте
//Если в сообщениях пользователю есть строка "МояСтрока" Тогда
//@ВСообщенияхПользователюЕстьСтрокаТогда(Парам01)
Процедура ВСообщенияхПользователюЕстьСтрокаТогда(Стр) Экспорт
	АктивноеОкно    = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	Попытка
		МассивСообщений = АктивноеОкно.ПолучитьТекстыСообщенийПользователю();
	Исключение
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Возврат;
	КонецПопытки;
	
	Если МассивСообщений = Неопределено Тогда
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Возврат;
	КонецЕсли;	 
	
	Нашли = Ложь;
	Для Каждого Сообщение Из МассивСообщений Цикл
		Если Найти(НРег(Сообщение),НРег(Стр)) > 0 Тогда
			Нашли = Истина;
			Прервать;
		КонецЕсли;	 
	КонецЦикла;	
	
	Ванесса.УстановитьРезультатУсловия(Нашли);
КонецПроцедуры

&НаКлиенте
//Если в таблице "Результат" есть колонки Тогда
//@ВТаблицеЕстьКолонкиТогда(Парам01,ТабПарам)
Процедура ВТаблицеЕстьКолонкиТогда(ИмяТЧ,ТабПарам) Экспорт
	ТЧ         = Ванесса.НайтиТЧПоИмени(ИмяТЧ);
	ЗначениеТЧ = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	
	Если ЗначениеТЧ = Неопределено Тогда
		ВызватьИсключение "Не смог получить состяние таблицы <" + ИмяТЧ + ">";
	КонецЕсли;	 
	
	Если ЗначениеТЧ.Количество() = 0 Тогда
		ВызватьИсключение "Нельзя получить состав колонок для пустой таблицы.";
	КонецЕсли;	 
	
	СтрокаСКолонками = ЗначениеТЧ[0];
	
	//Ванесса.ПосмотретьЗначение(СтрокаСКолонками);
	
	НашлиВсеКолонки = Истина;
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ИмяНужнойКолонки = СтрокаТабПарам.Кол1;
		ЗначениеВСоответствии = СтрокаСКолонками[ИмяНужнойКолонки];
		Если ЗначениеВСоответствии = Неопределено Тогда
			Сообщить("Не нашел колонку: " + ИмяНужнойКолонки);
			НашлиВсеКолонки = Ложь;
			Прервать;
		КонецЕсли;	 
	КонецЦикла;	
	
	Ванесса.УстановитьРезультатУсловия(НашлиВсеКолонки);
	
КонецПроцедуры
