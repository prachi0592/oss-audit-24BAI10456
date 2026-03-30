# Open Source Audit: VLC Media Player

## Student Information

* Name: Prachi Pande
* Roll Number: 24BAI10456

---

## Project Overview

This project is an audit of VLC Media Player on a Linux system. The goal is to understand how open-source software behaves in terms of installation, execution, file structure, and system interaction.

The audit is implemented using shell scripts, each focusing on a specific aspect of the system and the software.

---

## Scripts Description

### 1. script1_system_info.sh — System Identity Report

This script displays system-level information such as:

* Current user
* Linux distribution
* Kernel version
* Uptime and date

It helps in understanding the environment where VLC runs.

---

### 2. script2_package_inspector.sh — FOSS Package Inspector

This script checks whether VLC Media Player is installed and displays:

* Version
* Maintainer
* Description

It uses `dpkg`, `grep`, and conditional statements.

---

### 3. script3_disk_audit.sh — Disk and Permission Auditor

This script analyzes important directories and displays:

* Permissions
* Ownership
* Size

It also checks the VLC configuration directory:
~/.config/vlc/

---

### 4. script4_log_analyzer.sh — Log File Analyzer

This script reads a log file and counts occurrences of a keyword.

Features:

* Takes file path and keyword as input
* Uses loops and grep
* Handles empty files

---

### 5. script5_manifest_generator.sh — Open Source Manifesto Generator

This script:

* Takes user input
* Generates a text file
* Uses variables and date

It demonstrates interactive shell scripting.

---

## How to Run

Step 1: Give permission
chmod +x script1_system_info.sh

Step 2: Run
./script1_system_info.sh

(Repeat for all scripts)

---

## Dependencies

Install VLC before running:

sudo apt update
sudo apt install vlc

---

## Conclusion

This project demonstrates how shell scripting can be used to audit and analyze open-source software in a Linux environment. It provides insights into system behavior, package management, and file structures.
