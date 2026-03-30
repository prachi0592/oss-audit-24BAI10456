#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Purpose: Takes user input and generates manifesto file

echo "===================================="
echo "   Open Source Manifesto Generator"
echo "===================================="
echo ""

read -p "1. Name one open source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you: " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "------------------------------------" > "$OUTPUT"
echo "My Open Source Manifesto" >> "$OUTPUT"
echo "------------------------------------" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day I use $TOOL, which reminds me that the best tools are built openly." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM, and open source gives that to everyone." >> "$OUTPUT"
echo "One day I want to build $BUILD and share it with the world." >> "$OUTPUT"
echo "------------------------------------" >> "$OUTPUT"

echo ""
echo "Manifesto generated successfully!"
echo "Saved as: $OUTPUT"
echo ""

cat "$OUTPUT"

echo "===================================="
