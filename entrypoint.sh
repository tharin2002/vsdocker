#!/bin/bash
/home/vintagestory/server/server.sh start # Start the server
tail -f /var/vintagestory/data/Logs/server-main.txt # Watch the logfile