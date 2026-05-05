#!/bin/bash

echo "📊 Checking server status..."

proot-distro login ubuntu -- bash -c "

SERVER_PID=\$(pgrep -f 'java.*server.jar')
PLAYIT_PID=\$(pgrep -f playit)

echo ''

if [ -n \"\$SERVER_PID\" ]; then
    echo '🟢 Minecraft Server: RUNNING'
else
    echo '🔴 Minecraft Server: STOPPED'
fi

if [ -n \"\$PLAYIT_PID\" ]; then
    echo '🟢 Playit: RUNNING'
else
    echo '🔴 Playit: STOPPED'
fi

echo ''
"
