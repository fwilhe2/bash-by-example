#!/bin/bash
set -o nounset
set -o errexit

hello() {
    # This pattern is described here
    # https://jmmv.dev/2018/03/shell-readability-function-parameters.html
    local name="${1}"; shift
    local location="${1}"; shift
    echo Hello "$name" greetings to "$location"
}

main() {
    hello "Michael" "Bad Reichenhall"
}

main "${@}"