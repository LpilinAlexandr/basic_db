# ACID

- [Ссылочка на википедию об ACID](https://ru.wikipedia.org/wiki/ACID)
- [Статья на Хабре об ACID](https://habr.com/ru/articles/555920/)

## Atomicity — Атомарность

Каждая транзакция будет выполнена полностью или не будет выполнена совсем.

## Consistency — Согласованность

Транзакция, достигающая своего нормального завершения (англ. end of transaction, EOT) 
и тем самым фиксирующая свои результаты, сохраняет согласованность базы данных. 
Другими словами, каждая успешная транзакция по определению фиксирует только допустимые результаты.

## Isolation — Изолированность

Во время выполнения транзакции параллельные транзакции не должны оказывать влияния на её результат.
Изолированность — требование дорогое, поэтому в реальных базах данных существуют режимы, 
не полностью изолирующие транзакцию (уровни изолированности, допускающие фантомное чтение и ниже).

## Durability — Надёжность / Устойчивость

Если пользователь получил подтверждение от системы, что транзакция выполнена, он может быть уверен, 
что сделанные им изменения не будут отменены из-за какого-либо сбоя. 
Обесточилась система, произошел сбой в оборудовании? На выполненную транзакцию это не повлияет.
