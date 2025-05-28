#!/bin/bash

echo "Версія ОС:"
cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f2 | tr -d '"'
echo

echo "Користувачі з оболонкою bash:"
# Виводимо користувачів, у яких оболонка закінчується на /bash
grep '/bash$' /etc/passwd | cut -d ':' -f1
echo

echo "Відкриті порти на машині:"
# Виводимо всі відкриті порти (TCP і UDP)
# Потрібен sudo або права root для повного списку
sudo ss -tuln

