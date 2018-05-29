#!/bin/bash -v

set -e

# Build Ionic App for Android
ionic cordova platform remove android
ionic cordova platform add android

if [[ "$TRAVIS_BRANCH" == "prod" ]]
then
    echo "building apk for prod"
    ionic cordova build android --prod --release
else
    echo "building apk from dev"
    ionic cordova build android
fi
