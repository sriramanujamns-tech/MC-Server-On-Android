#!/bin/bash

echo "🚀 Starting everything..."

proot-distro login ubuntu -- bash -c "
cd ~ || exit

screen -dmS server java -Xmx512M -Xms512M -jar server.jar nogui

sleep 5

screen -dmS playit ./playit-linux-aarch64
"

# Start watchdog in Termux
screen -dmS watchdog ./watchdog.sh

echo "✅ Server + Playit + Auto-restart running!"
