﻿# language: ru

@IgnoreOnLinux
@OneThread
@IgnoreOnWeb

Функционал: Проверка перегенерации EPF в режиме обычных форм
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность на основании фичи перегенерировать epf файлы
 
Контекст:
	Дано Очищены временные файлы результатов прошлых генераций

	Сценарий: Перегенерация EPF

	Когда я открыл форму VanessaBehavoir в режиме самотестирования
	И я загрузил специальную тестовую фичу "фичадляпроверкиперегенерацииepf"
	И Пауза 1
	И я перешел на закладку генератор EPF
	И ожидаемый файл epf уже существует
	И в ожидаемом файле уже есть реализованные шаги
	И в фиче есть шаги, которых нет в ожидаемом epf файле
	И я нажал на кнопку "СоздатьШаблоныОбработок"
	И Пауза 10
	#чтобы обойти баг платформы повторного подключения EPF в обычных формах - ещё раз пересоздадим EPF
	И я нажал на кнопку "СоздатьШаблоныОбработок"
	И Пауза 10
	Тогда я получил сгенерированный epf файл в ожидаемом каталоге
	И сгенерированный epf прошел проверку на корректность после перегенерации

