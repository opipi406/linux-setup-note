# XServerでPythonを扱う際の備忘録

## 標準インストールされているPython以外を使う
[XserverにPython3.10.6をインストールしてみる](https://mogitate-lemon.com/install_python3-10-6/)

### libffiのインストール
```bash
wget https://github.com/libffi/libffi/releases/download/v3.4.2/libffi-3.4.2.tar.gz
tar xvfz libffi-3.4.2.tar.gz

cd libffi-3.4.2
./configure --prefix=$HOME/local/libffi/3_4_2
make
make install

cd ~/local/
mkdir -p include
mkdir -p lib/pkgconfig
mkdir -p lib64
```

`.bash_profile`に以下を追記
```bash
# ffi settings
export LD_LIBRARY_PATH=$HOME/local/lib64
export PKG_CONFIG_PATH=$HOME/local/lib/pkgconfig
```

### opensslのインストール
```bash
wget https://www.openssl.org/source/openssl-1.1.1l.tar.gz
tar -zxf openssl-1.1.1l.tar.gz
cd openssl-1.1.1l
./config --openssldir=$HOME/local/openssl
make
make install

ln -s ~/local/openssl/bin/openssl ~/local/bin
```

`.bash_profile`に以下を追記
```bash
# openssl settings
export PATH=$HOME/local/openssl/bin:$PATH
export LD_LIBRARY_PATH=$HOME/local/openssl/lib:$LD_LIBRARY_PATH
```

### Pythonのインストール
```bash
# bash_profileを再読み込み
source /.bash_profile
wget https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tgz
tar -zxf Python-3.10.6.tgz
cd Python-3.10.6
./configure \
--enable-optimizations \
--prefix=$HOME/local/python/ \
--with-system-ffi LDFLAGS="-L $HOME/local/lib64/" CPPFLAGS="-I $HOME/local/include/" \
--with-openssl=$HOME/local/openssl/ \
--with-openssl-rpath=auto

make
make install
```

## 標準インストールのPythonでpipを使う
[エックスサーバーでpip(Python)を使用する](https://tech.cmd08.com/xserver-python-pip)

### venvのセットアップ
```bash
python3.6 -m venv --without-pip .venv
```

```bash
source .venv/bin/activate
```

### pipのインストール
```bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
```

```bash
python get-pip.py
```
