# ma-smash

## How to build smash package

1. ソースファイルの準備 (ホスト上で)

        cd $HOME/vagrant/data/src
        wget https://sourceforge.net/projects/smash-qc/files/smash-2.0.0.tgz

2. ビルドディレクトリの準備

        cd $HOME/build
        sh /development/ma-smash/setup.sh

3. パッケージのビルド

        cd $HOME/build
        sh /development/ma-smash/build.sh 2>&1 | tee build.log

4. パッケージへの署名

        cd $HOME/build
        debsign smash_*.changes 

5. リポジトリへの登録

        cd $HOME/build
        sh /development/MateriAppsLive/repos/add_repo.sh smash_*.changes
