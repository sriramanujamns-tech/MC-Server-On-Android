#!/bin/bash

echo "🚀 Starting Ubuntu + Server + Playit..."

proot-distro login ubuntu -- bash -c "
cd ~ || exit

screen -dmS server java -Xmx512M -Xms512M -jar server.jar nogui

sleep 5

screen -dmS playit ./playit-linux-aarch64
"

echo "✅ Everything started!"
