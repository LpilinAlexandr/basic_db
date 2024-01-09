# Индексы

Структура данных для ускорения поиска данных в базе данных.

- Индексы в документации [Postgres](https://postgrespro.ru/docs/postgresql/16/indexes-types)

1. Рандомно сгенерируем 1 000 000 записей
```sql
INSERT INTO megaschema.employee (name, surname, patronymic, date_of_employment)
SELECT
    CONCAT('Name', CAST(ceil(random() * 1000000) AS integer)) AS name,
    CONCAT('Surname', CAST(ceil(random() * 1000000) AS integer)) AS surname,
    CONCAT('Patronymic', CAST(ceil(random() * 1000000) AS integer)) AS patronymic,
    TO_DATE('2000-01-01', 'YYYY-MM-DD') + CAST((random() * (NOW() - TO_DATE('2000-01-01', 'YYYY-MM-DD'))) AS interval) AS date_of_employment
FROM generate_series(1, 5000000);
```
2. Создадим индексы на каждую колонку
3. Попробуем вставить 100000 записей таким же способом.
4. Удалим все индексы
5. Снова попробуем вставить 100000 записей таким же способом.

Пример создания и снятия индексов:

Создание B-tree индекса

```sql
CREATE INDEX btree_index_name ON megaschema.employee(name); 
```

Создание hash индекса

```sql
CREATE INDEX hash_index_name ON megaschema.employee USING HASH (name);
```

Снятие индекса
```sql
DROP INDEX megaschema.btree_index_name;
DROP INDEX megaschema.hash_index_name;
```

## Анализ выполнения запроса
```
EXPLAIN ANALYZE
```
