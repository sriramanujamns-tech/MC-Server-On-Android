#!/bin/bash

echo "🚀 Starting Ubuntu + Server + Playit..."

# Start server + playit inside Ubuntu
proot-distro login ubuntu -- bash -c "
cd ~ || exit

# Start Minecraft server
screen -dmS server java -Xmx512M -Xms512M -jar server.jar nogui

sleep 5

# Start Playit (ARM)
screen -dmS playit ./playit-linux-aarch64
"

# Start watchdog in Termux
screen -dmS watchdog bash ~/watchdog.sh

echo "✅ Server + Playit + Watchdog started!"
