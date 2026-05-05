#!/bin/bash

echo "⚠️ Are you sure you want to stop everything and exit Termux? (y/n)"
read confirm

if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
    echo "🛑 Stopping server and Playit..."

    proot-distro login ubuntu -- bash -c "
    screen -S server -X stuff 'stop\n'
    sleep 5
    pkill playit
    pkill java
    "

    echo "🛡️ Stopping watchdog..."
    pkill -f watchdog.sh

    echo "📴 Closing Ubuntu..."
    pkill -f proot

    echo "👋 Exiting Termux..."
    exit
else
    echo "❌ Cancelled"
fi
