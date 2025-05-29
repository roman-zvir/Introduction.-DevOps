#!/bin/bash

echo "OS version:"
cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f2 | tr -d '"'
echo

echo "Users with bash:"
grep '/bash$' /etc/passwd | cut -d ':' -f1
echo

echo "Open ports:"
sudo ss -tuln

