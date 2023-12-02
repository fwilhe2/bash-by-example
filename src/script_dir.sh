#!/bin/bash
set -o nounset
set -o errexit

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
readonly SCRIPT_DIR

main() {
    echo Script location is "$SCRIPT_DIR", CWD is "$PWD"
}

main "${@}"