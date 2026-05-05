#!/bin/bash

read -p "Enter 'playit-linux-aarch64' download url: " url
wget -O playit-linux-aarch64 $url
ls
chmod +x playit-linux-aarch64
./playit-linux-aarch64
