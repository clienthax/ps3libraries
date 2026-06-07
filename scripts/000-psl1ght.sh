#!/bin/sh -e
# psl1ght.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
../download.sh psl1ght.tar.gz

## Unpack the source code.
rm -Rf psl1ght
mkdir psl1ght
tar --strip-components=1 --directory=psl1ght -xvzf ../archives/psl1ght.tar.gz
cd psl1ght

## Compile and install.
${MAKE:-make} install-ctrl && ${MAKE:-make} && ${MAKE:-make} install
