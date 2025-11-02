#!/bin/bash

# ===== Colors =====
GRAY="\e[1;30m"
GREEN="\e[1;32m"
BLUE="\e[1;34m"
WHITE="\e[1;37m"
RESET="\e[0m"

# ===== Create directory =====
echo -e "${GRAY}Creating${RESET} ${BLUE}/var/log/log-archives${RESET} ${GRAY}directory..."
sudo mkdir -p /var/log/log-archives

# ===== Installation =====
echo -e "${GRAY}Installing${RESET} ${WHITE}log-archive${RESET} ${GRAY}tool..."
sudo cp ./log-archive /usr/bin/
sudo chmod +x /usr/bin/log-archive

# ===== Output =====
echo -e "${GREEN}Successfully installed!${RESET}"
echo -e "${GRAY}Usage:${RESET} ${WHITE}log-archive${RESET} ${BLUE}<log-directory>${RESET}"
echo -e "${GRAY}Stored logs directory:${RESET} ${BLUE}/var/log/logs-archives${RESET}"