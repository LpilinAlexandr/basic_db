# DDL (Data Definition Language) 

Определение и изменение структуры базы данных

1. **Создание таблицы**
```SQL
CREATE TABLE IF NOT EXISTS megaschema.employee (
    id int8 PRIMARY KEY AUTO_INCREMENT,
    name varchar(128) NOT NULL,
    surname varchar(128) NOT NULL,
    patronymic varchar(128) NOT NULL,
    date_of_employment date NOT NULL
);
```

2. **Изменение столбца**
```SQL
ALTER TABLE megaschema.employee
ALTER COLUMN "name" TYPE varchar(100) USING "name"::varchar;
```


3. **Добавление ограничения на таблицу**
```SQL
ALTER TABLE megaschema.employee_grades 
ADD CONSTRAINT employee_grades__employee_relate 
FOREIGN KEY (employee_id)
REFERENCES megaschema.employee(id);
```

4. **Удаление таблицы**
```SQL
DROP TABLE megaschema.employee;
```
