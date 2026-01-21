#!/bin/bash
# Скрипт 3: Проверка четности числа
echo "Введите число для проверки:"
read number
if [ $((number % 2)) -eq 0 ]; then
    echo "Число $number - четное"
else
    echo "Число $number - нечетное"
fi