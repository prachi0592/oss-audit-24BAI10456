#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Prachi Pande | Course: Open Source Software
# Purpose: Checks if VLC is installed and prints its details and philosophy note

# --- Package to inspect ---
PACKAGE="vlc"   # The open source software we are auditing

echo "===================================="
echo "      FOSS Package Inspector"
echo "===================================="

# --- Check if the package is installed using dpkg ---
if dpkg -l | grep -qw "$PACKAGE"; then
    echo "$PACKAGE is installed."
    echo "------------------------------------"
    
    # Show version, maintainer and description
    dpkg -s "$PACKAGE" | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo "------------------------------------"

# --- Case statement to print philosophy note ---
case $PACKAGE in
    vlc)
        echo "VLC: A powerful open source media player that plays almost any format freely."
        ;;
    firefox)
        echo "Firefox: A browser built to protect privacy and keep the web open."
        ;;
    git)
        echo "Git: A distributed version control system empowering developers worldwide."
        ;;
    python3)
        echo "Python: A community-driven language built for innovation and simplicity."
        ;;
    *)
        echo "Unknown package: No philosophy note available."
        ;;
esac

echo "===================================="
