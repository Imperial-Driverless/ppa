#!/bin/sh

EMAIL=imperial.driverless@gmail.com

dpkg-scanpackages --multiversion . > Packages &&
gzip -k -f Packages &&
apt-ftparchive release . > Release &&
gpg --default-key "${EMAIL}" -abs -o - Release > Release.gpg &&
gpg --default-key "${EMAIL}" --clearsign -o - Release > InRelease


sed '/### Currently available packages/q' README.md > README.md.tmp
sed -n 's/^Package:/- /p' Packages | sort | uniq >> README.md.tmp
mv README.md.tmp README.md

