#!/bin/bash
# Script 4: Log File Analyzer
# Purpose: Reads log file and counts keyword occurrences

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "===================================="
echo "         Log File Analyzer"
echo "===================================="

# --- Check file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Retry if empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty"
    while [ ! -s "$LOGFILE" ]; do
        echo "Waiting for log file to have content..."
        sleep 2
    done
fi

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "===================================="
