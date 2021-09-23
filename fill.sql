-- включаем логирование времени
\timing

-- удаляем таблицу всех голосований, если она уже есть
drop table if exists votes;

-- создаём таблицу всех голосований
create table votes(id serial, name varchar(10));

-- заполняем таблицу всех голосований из файла с генерированными паролями
\copy votes(name) from 'votes.txt' with csv;

-- удаляем таблицу уникальных голосований, если она уже есть
drop table if exists votes_unique;

-- создаём таблицу уникальных голосований
create table votes_unique(id integer, name varchar(20));

-- заполняем таблицу уникальных голосований на базе таблицы всех голосований
insert into votes_unique select max(id), name from votes group by name;