#!/usr/bin/env bash
set -euo pipefail

make clean || true
make build
make clean

test ! -f stopnje_prevajanja
test ! -f main.o
test ! -f main.s
test ! -f main.i
