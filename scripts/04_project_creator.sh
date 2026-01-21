#!/bin/bash
# Скрипт 4: Создание структуры веб-проекта
echo "Введите название проекта:"
read project_name
mkdir -p "$project_name"
cd "$project_name" || exit
touch index.html
mkdir -p css && touch css/style.css
mkdir -p js && touch js/script.js
mkdir -p images
echo "Структура проекта '$project_name' создана:"
find . -type f -o -type d | sort