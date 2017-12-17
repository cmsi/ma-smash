# ma-smash

## How to build smash package

1. ソースファイルの準備 (ホスト上で)

	VERSION=2.2.0                           
        cd $HOME/vagrant/data/src
        rm -rf smash-${VERSION}.tar.gz smash-${VERSION} smash_${VERSION}
        wget https://sourceforge.net/projects/smash-qc/files/smash-${VERSION}.tgz
        tar zxvf smash-${VERSION}.tar.gz
        mv smash-${VERSION} smash_${VERSION}
        tar zcvf smash_${VERSION}.orig.tar.gz smash_${VERSION}

## How to test

    cd $HOME/build/smash_${VERSION}
    ./bin/smash < debian/smash/usr/share/smash/example/anthracene.inp
