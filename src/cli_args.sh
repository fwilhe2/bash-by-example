#!/bin/bash
set -o nounset
set -o errexit

# Example for a script with required and optional arguments

SCRIPT_NAME="${0##*/}"
readonly SCRIPT_NAME

usage() {
    echo "Usage: $SCRIPT_NAME Source Destination Name [Description] [Tags]"
    exit 1
}

main() {
    [[ $# -ge 3 ]] || usage
    [[ -n "$1" ]] || usage
    [[ -n "$2" ]] || usage
    [[ -n "$3" ]] || usage
    local source="${1}"; shift
    local destination="${1}"; shift
    local name="${1}"; shift
    local description
    [[ $# -ge 1 ]] && description="${1}"; shift || description=somedefault
    local tags
    [[ $# -ge 1 ]] && tags="${1}"; shift || tags=somedefault

    echo "$source" "$destination" "$name" "$description" "$tags"
}

main "${@}"