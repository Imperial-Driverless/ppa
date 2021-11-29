#!/bin/sh

FILENAME=50-imperial-driverless.list
PACKAGE_NAME=imperial-driverless-rosdep-index
VERSION=0.4.0
DEB_FILE=packages/${PACKAGE_NAME}_${VERSION}-0focal_amd64.deb

echo yaml https://imperial-driverless.github.io/ppa/rosdep.yaml > $FILENAME

rm -f $DEB_FILE

fpm --input-type dir \
    --output-type deb \
    --name $PACKAGE_NAME \
    --version $VERSION \
    --architecture all \
    --deb-priority required \
    -m "Imperial Driverless <imperial.driverless@gmail.com>" \
    --package $DEB_FILE \
    $FILENAME=/etc/ros/rosdep/sources.list.d/

rm $FILENAME
