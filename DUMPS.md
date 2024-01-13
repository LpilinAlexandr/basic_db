### PostgreSQL

Сделать полный dump
```shell
pg_dump -U postgres test_db.megaschema > /dumps/psql_dump_1.sql
```

Сделать dump одной таблицы
```shell
pg_dump -U <имя_пользователя> -t <имя_таблицы> <имя_базы_данных> > <путь_к_файлу_дампа.sql>
```

Загрузить полный dump
```shell
psql -U postgres -d test_db < /dumps/psql_dump_1.sql
```

Загрузить dump одной таблицы
```shell
psql -U <имя_пользователя> -d <имя_базы_данных> -t <имя_таблицы> < <путь_к_файлу_дампа.sql>
```

### MySQL

Сделать полный dump
```shell
mysqldump -u root -p megaschema > /dumps/mysql_dump_1.sql
```

Сделать dump одной таблицы
```shell
mysqldump -u <имя_пользователя> -p <имя_базы_данных> <имя таблицы> > <путь_к_файлу_дампа.sql>
```

Загрузить полный dump
```shell
mysql -u <имя_пользователя> -p <имя_базы_данных> < <путь_к_файлу_дампа.sql>
```

Загрузить dump одной таблицы
```shell
mysql -u <имя_пользователя> -p <имя_базы_данных> < <путь_к_файлу_дампа.sql>
```
