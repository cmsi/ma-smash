# ma-smash

## How to build smash package

1. ソースファイルの準備 (ホスト上で)

        cd $HOME/vagrant/data/src
        wget https://sourceforge.net/projects/smash-qc/files/smash-2.1.0.tgz

2. 以降

   共通手順を参照 https://github.com/cmsi/MateriAppsLive/wiki/BuildApplicationPackages#パッケージのビルド方法

## How to test

    cd $HOME/build/smash_2.1.0
    ./bin/smash < debian/smash/usr/share/smash/example/anthracene.inp
