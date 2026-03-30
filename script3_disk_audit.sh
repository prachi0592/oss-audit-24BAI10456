#!/bin/bash
# Script 3: Disk and Permission Auditor
# Purpose: Checks directory size, permissions and VLC config

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "===================================="
echo "      Directory Audit Report"
echo "===================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "------------------------------------"

# --- VLC config check ---
VLC_CONFIG="$HOME/.config/vlc"
echo "Checking VLC configuration directory..."

if [ -d "$VLC_CONFIG" ]; then
    PERMS=$(ls -ld "$VLC_CONFIG" | awk '{print $1, $3, $4}')
    echo "$VLC_CONFIG => Permissions: $PERMS"
else
    echo "VLC config directory NOT found"
fi

echo "===================================="
