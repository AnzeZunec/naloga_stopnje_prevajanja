#!/usr/bin/env bash
set -euo pipefail

make clean || true
make build
./stopnje_prevajanja > output.txt
grep -q "square(5) = 25" output.txt
