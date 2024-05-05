# GCP GCE 環境構築メモ

## yumの初期セットアップ
```bash
sudo apt-get -y update
```

## gitのインストール
```bash
sudo apt-get -y install git
```

## dockerのインストール
```bash
sudo apt-get -y install docker
```
```bash
sudo service docker start
```
### 現在ログインしているユーザーをdockerグループへ追加する
```bash
sudo gpasswd -a $(whoami) docker
```
### docker.sock にグループでの書き込み権限を付与
```bash
sudo chgrp docker /var/run/docker.sock
```

## docker-composeのインストール
```bash
sudo mkdir -p /usr/local/lib/docker/cli-plugins
sudo curl -SL https://github.com/docker/compose/releases/download/v2.4.1/docker-compose-linux-x86_64 -o /usr/local/lib/docker/cli-plugins/docker-compose
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
```
