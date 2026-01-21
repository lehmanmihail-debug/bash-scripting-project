#!/bin/bash
# Скрипт 5: Подсчет строк в файле
echo "Введите путь к файлу:"
read file_path
if [ -f "$file_path" ]; then
    line_count=$(wc -l < "$file_path")
    echo "Количество строк в файле: $line_count"
else
    echo "Ошибка: Файл '$file_path' не найден"
fi