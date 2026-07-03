#!/bin/bash

CPU=$(top -bn1 | awk '/Cpu/ {print int(100 - $8)}')
MEM=$(free | awk '/Mem/ {printf "%.0f", $3/$2 * 100}')

echo "CPU: ${CPU}% | MEM: ${MEM}% "
