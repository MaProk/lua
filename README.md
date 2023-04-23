# Задание на повышение оценки:

![](report/demo.gif)

Выше показана демонстрация работы программы – введенная информация успешно сохраняется в базу, в чем можно убедиться ниже:
![](report/mysql.png)

### Добавлена функция обработки параметров:
![](report/parse_param_str.png)

Данная функция возвращает значения из строки параметров как переменные

### Добавлена функция вставки значений в таблицу:
![](report/insert_values.png)

Данная функция подключается к БД по релеватным учетным данным, и исполняет SQL-запрос

### Вывод:
Таким образом, можно с помощью языка Lua взаимодействовать с базой данных MySQL