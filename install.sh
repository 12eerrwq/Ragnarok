#!/bin/bash

# ===== Colors =====
G='\033[1;32m'
R='\033[1;31m'
Y='\033[1;33m'
C='\033[1;36m'
W='\033[0m'

clear
echo -e "${C}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${Y}🚀 Installing Jatiin Tool"
echo -e "${C}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${W}"
sleep 1

# Check safe file
if [ ! -f "pikachu" ]; then
    echo -e "${R}❌ Error: 'pikachu' file not found${W}"
    exit 1
fi

# Permission
chmod +x pikachu
echo -e "${G}✅ Permission granted${W}"
sleep 1

# Install to PREFIX/bin
if [ -d "$PREFIX/bin" ]; then
    mv pikachu "$PREFIX/bin/"
    echo -e "${G}✅ Tool installed successfully${W}"
else
    echo -e "${R}❌ PREFIX/bin not found${W}"
    exit 1
fi

echo
echo -e "${C}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${G}✅ Installation Complete Bittch🔥"
echo -e "${Y}👉 Run command: ${C}pikachu${W}"
echo -e "${C}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
