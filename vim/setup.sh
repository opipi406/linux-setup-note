#!/bin/bash
UNAMEOUT="$(uname -s)"
BASE_DIR=$(
    cd $(dirname $0)
    pwd
)

# Verify operating system is supported...
case "${UNAMEOUT}" in
Linux*) MACHINE=linux ;;
Darwin*) MACHINE=mac ;;
*) MACHINE="UNKNOWN" ;;
esac

if [ "$MACHINE" == "UNKNOWN" ]; then
    exit 1
fi

# Determine if stdout is a terminal...
if test -t 1; then
    # Determine if colors are supported...
    ncolors=$(tput colors)

    if test -n "$ncolors" && test "$ncolors" -ge 8; then
        BOLD="$(tput bold)"
        RED="$(tput setaf 1)"
        GREEN="$(tput setaf 2)"
        YELLOW="$(tput setaf 3)"
        BLUE="$(tput setaf 4)"
        PURPLE="$(tput setaf 5)"
        WATER="$(tput setaf 6)"
        GRAY="$(tput setaf 8)"
        NC="$(tput sgr0)"
    fi
fi

# Function that prints the available commands...
function display_help {
    echo "vim setup script"
    echo
    echo "${YELLOW}Usage:${NC}" >&2
    echo "  bash setup.sh"
    exit
}

if [ $# -ge 0 ]; then
    if [ "$1" == "help" ] || [ "$1" == "-h" ] || [ "$1" == "-help" ] || [ "$1" == "--help" ]; then
        display_help
    fi
fi

###################################################################################################

if [ ! -e $HOME/.vimrc ]; then
    cp ./vimrc $HOME/.vimrc
    echo "[INFO] vimrcを $HOME/.vimrc にコピーしました"
fi
