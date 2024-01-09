# DML (Data Manipulation Language) 

Получение и изменение записей в таблице

Можно попрактиковаться здесь: https://leetcode.com/problemset/database/

1. **SELECT** — Получение данных из таблицы
```sql
SELECT *
FROM megaschema.employee as e
join megaschema.employee_grades as eg on e.id = eg.employee_id
join megaschema.grade as g on g.id = eg.grade_id
WHERE g.name = 'сеньор'
GROUP BY
HAVING 
ORDER BY
LIMIT 10

```
2. **INSERT INTO** — Вставка новых данных в таблицу
```sql
INSERT INTO megaschema.employee ("name", surname, patronymic, date_of_employment)
VALUES('Иван', 'Иванов', 'Иванович', '03-01-2024');
```

3. **UPDATE** — Обновление данных в таблице
```sql
UPDATE megaschema.employee
SET "name"='Иван', surname='Иванов', patronymic='Иванович', date_of_employment='03-01-2024'
WHERE id=1;
```

4. **DELETE** — Удаление данных из таблицы
```sql
DELETE FROM megaschema.employee
WHERE id=1;
```
