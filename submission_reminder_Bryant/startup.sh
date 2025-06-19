#!/bin/bash
cd "$(dirname "$0")/app"
echo "-------------------------------"
echo "Starting Reminder App....."
echo "-------------------------------"
echo "Due Date: 2 days remaining"
echo "-------------------------------"
chmod +x ../modules/functions.sh reminder.sh
./reminder.sh
