# Урок 1 - Вводное занятие

### Материалы

🔗 **[Запись урока](https://youtu.be/JsA4QkTNm-M)**

🔗 **[Тест](https://goo.gl/qDeQp8)**

### Содержание урока

1. [Как устроен репрозиторий Github ](https://youtu.be/JsA4QkTNm-M#t=21m00s) 
2. [Как узнать кто ваш ментор](https://youtu.be/JsA4QkTNm-M#t=30m47s)
3. [Как устроен slack-чат](https://youtu.be/JsA4QkTNm-M#t=32m57s)
4. [Программа курса](https://youtu.be/JsA4QkTNm-M#t=37m50s)
5. [Как выполнять домашние задания](https://youtu.be/JsA4QkTNm-M#t=47m49s)
6. [Знакомство с ES6](https://youtu.be/JsA4QkTNm-M#t=64m02s)
7. [Как преобразовать код ES6 на ES5](https://youtu.be/JsA4QkTNm-M#t=68m25s)
8. [Переменные let и const](https://youtu.be/JsA4QkTNm-M#t=70m12s)
9. [Деструктуризация](https://youtu.be/JsA4QkTNm-M#t=77m03s)
10. [Fat arrow function](https://youtu.be/JsA4QkTNm-M#t=89m18s)
11. [Работа с аргументами функций](https://youtu.be/JsA4QkTNm-M#t=102m00s)
12. [Сокращения для полей объектов short hands](https://youtu.be/JsA4QkTNm-M#t=119m15s)
13. [Классы](https://youtu.be/JsA4QkTNm-M#t=126m50s)

#### Настройка текстового редактора

🔗 **[Скачать Atom](https://atom.io/)**

**Плагины:**

- [file-icons](https://atom.io/packages/file-icons)
- [language-babel](https://atom.io/packages/language-babel)
- [linter](https://atom.io/packages/linter)
- [linter-eslint](https://atom.io/packages/linter-eslint)
- [react](https://atom.io/packages/react)
- [pigments](https://atom.io/packages/pigments) и [minimap-pigments](https://atom.io/packages/minimap-pigments)
- [minimap](https://atom.io/packages/minimap)
- [double-tag](https://atom.io/packages/double-tag)
- [highlight-selected](https://atom.io/packages/highlight-selected) и [minimap-highlight-selected](https://atom.io/packages/minimap-highlight-selected)
- [seti-ui](https://atom.io/themes/seti-ui) и [monokai-seti](https://atom.io/themes/monokai-seti)
- [atom-beautify](https://atom.io/packages/atom-beautify)

### Задания

#### 1. Маленькие задачки на работу с массивами

⭐️ **1 балл**

В папке `01` для выполнения данного задани лежит файл `tasks.js` В нем в комментариях описано какие задачи необходимо решить. Используйте для решения задач ES6 и методы для работы с массивами (map, reguce, filter, find, every). Постарайтесь написать максимально лаконичное решение.

#### 2. Задачки на преобразование данных

⭐️⭐️ **2 балла**

Используя приемы функционального программирования и возможности ES6, решите задачки в папке 02 в файле `tasks.js` (описаны в комментариях).

#### 3. Сортируемая табличка

⭐️⭐️⭐️ **3 балла**

Используя полученные знания по ES2015 и приемы функционального программирования реализуйте тестовое задание курса с сортируемой таблицей.

**Описание задания:**

Реализуйте веб-страницу с поиском по фильмам. На странице должен находиться поле для поиска и таблица. После ввода поискового запроса в поле для поиска, должны получаться данные для отображения с использованием [The Movie Database API](https://developers.themoviedb.org/3/search/search-movies). После того, как данные получены - они должны отобразиться в таблице с такими полями (минималный набор, можно расширить): ID, Title, Language, Popularity Index, Votes Count, Rating, Release Date. 

При клике на заголовок столбца, все данные в таблице должны сортироваться по значениям в этом столбце по возрастанию, при втором клике - по убыванию, при третьем - опять по возрастанию и т.д. 

При клике на заголовок другой колонки, данные должны пересортировываться по значениям в этой колонке аналогично. При этом, необходимо ввести идикатор порядка сортировки для выбранной колонки, например, стрелки вверх и вниз (↑ и ↓).

**Требования:**

1. Используйте метод [fetch](https://learn.javascript.ru/fetch) для совершения запросов к серверу
2. НЕ используйте jQuery. **Только vanilla JavaScript**
3. Запрещено использовать сторонние библиотеки для сортировки, этот функционал нужно реализовать самостоятельно
4. Постарайтесь реализовать механизм "сортируемости" таблицы максимально переиспользуемым. Так, чтобы его работа не зависела от данных, которые отображаются.
5. Готовую, рабочую веб-страницу нужно разместить на Github Pages и приложить ссылку
6. Для стилей можно использовать Bootstrap.


#### 4. Which House George Martin Hated The Most

⭐️⭐️ **2 балла**

Напишите функцию-генератор, которая по номеру книги (book) получает название дома (house) с максимальным числом погибших персонажей (character).

Документация API: https://anapioficeandfire.com/

### Полезности

1. [Дополнительно о ES2015](https://learn.javascript.ru/es-modern-usage)
2. [Документация React](https://facebook.github.io/react/)
3. [Babel](https://babeljs.io/)
4. [Установка Node.js и npm](https://nodejs.org/en/download)
5. [Javascript Style Guide](https://github.com/airbnb/javascript)

