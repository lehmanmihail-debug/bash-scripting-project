#!/bin/bash
echo "=== ТЕСТИРОВАНИЕ ВСЕХ СКРИПТОВ ==="

# Создаем тестовую структуру
mkdir -p test-temp
cd test-temp || exit

echo ""
echo "1. Тест приветствия:"
echo "Анна" | ../scripts/01_greeting.sh

echo ""
echo "2. Тест калькулятора:"
echo -e "15\n25" | ../scripts/02_calculator.sh

echo ""
echo "3. Тест четности:"
echo "7" | ../scripts/03_even_odd.sh
echo "8" | ../scripts/03_even_odd.sh

echo ""
echo "4. Тест создания проекта:"
echo "test-web" | ../scripts/04_project_creator.sh 2>/dev/null

echo ""
echo "5. Тест подсчета строк:"
echo "../test-files/test.txt" | ../scripts/05_line_counter.sh

echo ""
echo "6. Тест генератора паролей:"
echo "" | ../scripts/06_password_generator.sh | head -1

echo ""
echo "7. Тест поиска файлов:"
echo "txt" | ../scripts/07_file_finder.sh

# Убираем за собой
cd ..
rm -rf test-temp

echo ""
echo "=== ТЕСТИРОВАНИЕ ЗАВЕРШЕНО ==="