#!/bin/sh

if [ "$(id -u)" != "0" ]; then
    echo "Please run this script as root."
    exit 1
fi

apt install software-properties-common python-software-properties build-essential git curl wget -y