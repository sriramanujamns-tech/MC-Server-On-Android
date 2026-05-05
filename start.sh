#!/bin/bash

echo "🔄 Starting Minecraft Server + Playit..."

proot-distro login ubuntu -- bash -c "
cd ~ || exit

# Start Minecraft server in background
screen -dmS server java -Xmx512M -Xms512M -jar server.jar nogui

sleep 5

# Start Playit (ARM version)
screen -dmS playit ./playit-linux-aarch64
"

echo "✅ Server + Playit started successfully!"
