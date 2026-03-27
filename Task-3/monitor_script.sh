#!/bin/bash

CONTAINER_NAME="web-container"
LOG_DIR="/opt/container-monitor/logs"

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

STATS=$(docker stats $CONTAINER_NAME --no-stream --format "{{.CPUPerc}},{{.MemUsage}}")

CPU=$(echo $STATS | cut -d',' -f1)
MEM=$(echo $STATS | cut -d',' -f2)

echo "$TIMESTAMP | CPU: $CPU | MEM: $MEM" >> $LOG_DIR/monitor_script.log
