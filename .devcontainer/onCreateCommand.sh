#/usr/bin/env bash

cd ext
git clone -b groove https://github.com/Zahlen-Group/ei.git

cd ei
scripts/build_all.sh --install --with-tests --clean --parallel
