#!/usr/bin/env bash
set -euo pipefail

make clean || true
make build
test -f stopnje_prevajanja
