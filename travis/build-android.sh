#!/bin/bash -v

set -e

# Build Ionic App for Android
ionic cordova platform remove android
ionic cordova platform add android

if [[ "$TRAVIS_BRANCH" != "master" ]]
then
    echo "building apk for dev"
    ionic cordova build android
else
    echo "building apk from prod"
    ionic cordova build android --prod --release
fi
