#!/bin/bash
set -e
set -o pipefail

dist=$(mktemp -d)
work=$(mktemp -d)
git clone --depth=1 https://github.com/gpac/gpac.git "$work"
cd "$work"
./configure --enable-sdl-static --static-mp4box --enable-static-bin --prefix="$dist"
make
make install
rm -rf "$t"
echo "see $dist"
