#!/usr/bin/env bash

# clone source repos
git clone --depth 1 --branch v2.2.0 https://github.com/danielgtaylor/jpeg-archive.git
git clone --depth 1 --branch v3.3.1 https://github.com/mozilla/mozjpeg.git

# build mozjpeg
cd mozjpeg && autoreconf -fiv && ./configure --with-jpeg8 && make CC=gcc-9 && make install && cd ..

# build jpeg-archive
cd jpeg-archive && make CC=gcc-9 && make install
