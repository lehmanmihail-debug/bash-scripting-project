#!/bin/bash
# Скрипт 6: Генератор случайных паролей
echo "Генератор паролей"
echo "Длина пароля (по умолчанию 8):"
read length
length=${length:-8}
password=$(tr -dc 'A-Za-z0-9!@#$%^&*()' < /dev/urandom | head -c "$length")
echo "Ваш пароль: $password"