#!/bin/bash

echo -n "git-completion.bash/git-prompt.bashのダウンロードを実行しますか？ [y/N] "; read ANSWER
if [ "$ANSWER" != "y" ]; then
    exit 1
fi

echo "[INFO] git-completion.bash インストール開始"
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O $HOME/.git-completion.bash
chmod a+x $HOME/.git-completion.bash
echo "[INFO] git-completion.bash インストール完了"

echo "[INFO] git-prompt.bash インストール開始"
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O $HOME/.git-prompt.sh
chmod a+x $HOME/.git-prompt.sh
echo "[INFO] git-prompt.bash インストール完了"