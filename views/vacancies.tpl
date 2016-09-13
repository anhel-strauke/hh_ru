<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Вакансии питонистов в Новосибирске &mdash; Смертельный номер! Исполняется впервые!</title>
	<style type="text/css">
		html { padding: 0; margin: 0; background: lightgray;}
		body { max-width: 900px; background: white; font-size: 14pt; font-family: Arial; margin: 0 auto; }
		header, article, footer { padding: 0.5em; }
		header { background: darkslategray; color: white; }
		header h1 { margin: 0 0 0.3em 0; font-size: 160%; }
		header h2 { font-size: 120%; margin: 0; }
		header h2 a { color: inherit; text-decoration: none; }
		header h2 a:hover {	text-decoration: underline; }
		article h1 { margin: 0.4em 0 0.1em 0; font-size: 140%; }
		article h2 { margin: 0.2em 0 0 0; font-size: 110%; }
		article p { margin: 0.2em 0 0 0; }
		footer { background: darkslategray; color: lightgray; font-size: 80%; }
		footer p a { color: inherit; }
	</style>
</head>
<body>
	<header>
		<h1>Вакансии питонистов в Новосибирске</h1>
		<h2>по версии <a href="http://hh.ru/">HeadHunter.ru</a></h2>
	</header>
% for v in vacancies:
	<article>
		<h1>{{v['name']}}</h1>
		<h2>Требования к кандидату</h2>
		<p>{{!v['requirement'] or 'Не указаны.'}}</p>
		<h2>Обязанности</h2>
		<p>{{!v['responsibility'] or 'Не указаны.'}}</p>
		<p><strong>Работодатель:</strong> {{v['employer']}}</p>
		<p><strong>Зарплата:</strong> {{v['salary'] or 'Не указана.'}}</p>
		<p><a href="{{v['url']}}" target="_blank">Подробности тут</a></p>
	</article>
% end
	<footer>
		<p>Этот сайт разработан на <a href="http://python.org/">Python</a> с использованием библиотек
		<a href="http://bottlepy.org/">Bottle.py</a> и <a href="http://docs.python-requests.org/en/master/">Requests</a>,
		а так же <a href="https://dev.hh.ru/">API HeadHunter</a>.
		Хостинг от <a href="http://www.pythonanywhere.com/">PythonAnywhere</a>.</p>
		<p>Тематика выбрана исключительно потому, что на бесплатном тарифе у PythonAnywhere нельзя обращаться
		к внешним сервисам, не включённым в <a href="https://www.pythonanywhere.com/whitelist/">белый список</a>.
		Непостижимым образом в этом белом списке оказался hh.ru.</p>
		<p>&copy; 2016, Анатолий Грико</p>
	</footer>
</body>
</html>
