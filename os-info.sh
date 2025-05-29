#!/bin/bash

echo -e "OS version:\n$(uname -a)\n"

echo "Users with bash:"
grep '/bash$' /etc/passwd | cut -d ':' -f1
echo

echo "Open ports:"
sudo ss -tuln

