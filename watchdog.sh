#!/bin/bash

echo "🛡️ Watchdog running..."

while true
do
    proot-distro login ubuntu -- bash -c "
    SERVER_PID=\$(pgrep -f 'java.*server.jar')

    if [ -z \"\$SERVER_PID\" ]; then
        echo '⚠️ Server crashed! Restarting...'
        screen -dmS server java -Xmx512M -Xms512M -jar server.jar nogui
    fi
    "

    sleep 10
done
