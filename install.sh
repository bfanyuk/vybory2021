#!/bin/bash

# обновляем библиотеки
sudo apt-get update

# устанавливаем функцию генерации паролей
sudo apt-get install -y pwgen

# устанавливаем сервер базы данных
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -y postgresql

