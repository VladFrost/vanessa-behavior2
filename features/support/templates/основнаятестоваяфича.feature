﻿# language: ru

@IgnoreOnCIMainBuild
@SpecialTag

Функционал: Загрузить фичу в vanessa-behavior
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность загрузить произвольную тестовую фичу в vanessa-behavior
 

Сценарий: Загрузка тестовой фичи основная тестовая фича

	Когда Я загрузил специальную тестовую фичу "основнаятестоваяфича"
	Тогда ДеревоТестов заполнилось строками из фичи

