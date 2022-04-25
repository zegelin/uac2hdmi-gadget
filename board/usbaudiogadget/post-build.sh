#!/bin/bash

set -xe

BOARD_DIR="$(dirname $0)"

cp "${BOARD_DIR}/cmdline.txt" "${BINARIES_DIR}"