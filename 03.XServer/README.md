# XServer 環境構築メモ

- [XServerでpython & pipを使う](./python.md)

## 最新版Git（2.x）のインストール

[XserverでGitの最新版を使う](https://itexplorer.hateblo.jp/entry/20170624-use-latest-git-on-xserver)

```bash
wget https://www.kernel.org/pub/software/scm/git/git-2.39.1.tar.gz -O ~/git-2.x.tar.gz
```

```bash
tar zxf git-2.x.tar.gz
cd git-2.x
./configure --prefix=$HOME/local
make all
make -i install
```

```bash
rm -rf ~/git-2.x.tar.gz ~/git-2.x
```

## リンク

[Xserverに自前の認証キーでSSH接続する方法](https://hiro8blog.com/connect-to-xserver-by-ssh/)  

[Xserver に Vim をインストールする](https://ityorozu.net/itblog-xserver-vim/)  

[nodebrew](https://github.com/hokaccha/nodebrew)  

[エックスサーバーのSSHでPHPのバージョンを変更する方法](https://minory.org/xserver-ssh-php7.html)  

[[備忘] 複数Githubアカウントでssh接続設定(config)を使い分ける手順](https://qiita.com/yampy/items/24638156abd383e08758)  

[【完全版】エックスサーバにLaravel8インストール、公開方法まで一挙公開！](https://reffect.co.jp/laravel/xserver-laravel8#Laravel)  
