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
    echo "git config setup script"
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

echo -n "${WATER}?${NC} git-completion.bash / git-prompt.bashのダウンロードを実行しますか？ ${GRAY}[y/N]${NC} "
read -r ANSWER
if [ "$ANSWER" != "y" ]; then
    exit 1
fi

# install git-completion.bash
echo "${WATER}[INFO]${NC} git-completion.bashのダウンロードを実行します"

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O "$HOME"/.git-completion.bash
chmod a+x "$HOME"/.git-completion.bash

echo "${WATER}[INFO]${NC} git-completion.bashのダウンロードが完了しました"
echo "${GRAY}-> $HOME/.git-completion.bash${NC}"

# install git-prompt.bash
echo "${WATER}[INFO]${NC} git-prompt.bashのダウンロードを実行します"

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O "$HOME"/.git-prompt.sh
chmod a+x "$HOME"/.git-prompt.sh

echo "${WATER}[INFO]${NC} git-prompt.bashのダウンロードが完了しました"
echo "${GRAY}-> $HOME/.git-prompt.sh${NC}"