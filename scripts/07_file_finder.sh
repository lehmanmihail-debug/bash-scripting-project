#!/bin/bash
# Скрипт 7: Поиск файлов по расширению
echo "Введите расширение файла (например, txt, sh, py):"
read extension
echo "Поиск файлов с расширением .$extension в текущей директории..."
echo "========================================"
find . -maxdepth 1 -type f -name "*.$extension" 2>/dev/null
count=$(find . -maxdepth 1 -type f -name "*.$extension" 2>/dev/null | wc -l)
echo "========================================"
echo "Найдено файлов: $count"