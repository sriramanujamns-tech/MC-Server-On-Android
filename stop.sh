#!/bin/bash

echo "🛑 Stopping everything..."

proot-distro login ubuntu -- bash -c "
# Stop Minecraft server safely
screen -S server -X stuff 'stop\n'

sleep 5

# Kill Playit
pkill playit

# Kill any leftover Java processes (safety)
pkill java
"

echo "✅ Server + Playit stopped!"
