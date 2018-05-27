#!/bin/bash -v

set -e

# Build Ionic App for Android
# ionic cordova platform add android --nofetch


if [[ "$TRAVIS_BRANCH" == "travis" ]]
then
    echo "building apk for dev"
    ionic cordova platform remove android
    ionic cordova platform add android
    $ANDROID_HOME/tools/bin/sdkmanager --update
    ionic cordova build android
else
    echo "building apk from prod"
    ionic cordova build android --prod --release
fi
