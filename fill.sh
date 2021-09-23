#!/bin/bash

# генерируем файл паролей
pwgen -1 5 1000000 > votes.txt

# выполняем скрипт базы данных
sudo -u postgres psql -f fill.sql