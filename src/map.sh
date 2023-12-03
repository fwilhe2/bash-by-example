#!/bin/bash
set -o nounset
set -o errexit

main() {
    declare -A map
    map[foo]=FOO
    map[bar]=BAR

    local myKey=foo

    echo "${map[$myKey]}" "${map[bar]}"
}

main "${@}"