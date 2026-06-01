#!/bin/sh
antigravity --no-sandbox &
while pgrep -f "antigravity" >/dev/null; do
    sleep 1
done
