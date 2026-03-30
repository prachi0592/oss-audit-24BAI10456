#!/bin/bash
# Script 1: System Identity Report
# Author: Prachi Pande | Course: Open Source Software
# Purpose: Displays system information like a welcome screen

# --- Student details ---
STUDENT_NAME="Prachi Pande"
SOFTWARE_CHOICE="VLC Media Player"

# --- Fetch system information using command substitution ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date '+%d %B %Y %H:%M')
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
HOME_DIR=$HOME

# --- Display all information ---
echo "===================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "===================================="
echo "Software  : $SOFTWARE_CHOICE"
echo "Distro    : $DISTRO"
echo "Kernel    : $KERNEL"
echo "User      : $USER_NAME"
echo "Home Dir  : $HOME_DIR"
echo "Uptime    : $UPTIME"
echo "Date      : $DATE"
echo "===================================="
echo "License   : The Linux kernel is licensed under GNU General Public License (GPL v2),"
echo "            which ensures freedom to use, modify and distribute software."
echo "===================================="
echo "Welcome to your Linux System"
