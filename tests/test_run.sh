#!/usr/bin/env bash
set -euo pipefail

make clean || true
make build
./stopnje_prevajanja > output.txt
grep -q "Example Number: 25Hello World" output.txt