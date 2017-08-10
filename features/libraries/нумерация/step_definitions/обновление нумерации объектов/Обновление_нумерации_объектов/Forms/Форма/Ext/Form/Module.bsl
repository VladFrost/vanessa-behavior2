﻿
#Область Служебные_функции_и_процедуры

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

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОбновляюНумерациюОбъектовДля(Парам01)","ЯОбновляюНумерациюОбъектовДля","И Я обновляю нумерацию объектов для ""ПолноеИмяОбъектаМетаданных""", "Выполняет обновление номеров для объекта метаданных по полному имени", "Нумерация");

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

#КонецОбласти



#Область Работа_со_сценариями

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры

#КонецОбласти


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаСервере
Процедура ЯОбновляюНумерациюОбъектовДляНаСервере(ПолноеИмяОбъектаМетаданных)
	
	ОбъектМетаданных = Метаданные.НайтиПоПолномуИмени(ПолноеИмяОбъектаМетаданных);
	Если ОбъектМетаданных = Неопределено Тогда
		ТекстИсключения = "Не найден объект метаданных по полному имени <" + ПолноеИмяОбъектаМетаданных + ">";
		ВызватьИсключение ТекстИсключения;
	КонецЕсли;
	
	Попытка
		ОбновитьНумерациюОбъектов(ОбъектМетаданных);
	Исключение
		ТекстИсключения = "Не удалось обновить нумерацию объектов для " + ПолноеИмяОбъектаМетаданных + Символы.ПС + ОписаниеОшибки();
	КонецПопытки;

КонецПроцедуры

&НаКлиенте
//И Я обновляю нумерацию объектов для "ПолноеИмяОбъектаМетаданных"
//@ЯОбновляюНумерациюОбъектовДля(Парам01)
Процедура ЯОбновляюНумерациюОбъектовДля(Парам01) Экспорт

	ЯОбновляюНумерациюОбъектовДляНаСервере(Парам01);
	
КонецПроцедуры
