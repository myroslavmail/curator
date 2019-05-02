#!/bin/sh

set -e

#help
usage () {
    echo "$(basename "$0") [-h] [-d] -- this is help description to my script

where:
    -h show this help text
    -d days to remove daily snapshots"
    exit 0
}


while [[ $# -gt 0 ]] && getopts "hd:" key; do
case $key in
    d) arg=${OPTARG#-}
    if [[ "$arg" = "${OPTARG}" ]]; then
        rem_days=$OPTARG
        echo "Now rem_days values is $rem_days"
    else
        echo "Removal value can't be the empty space"
        OPTIND=$OPTIND-1
        exit 1
    fi
    ;;
    h)
    usage
    exit
    ;;
esac
done
