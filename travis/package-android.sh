#!/bin/bash -v

set -e

if [[ -e platforms/android/app/build/outputs/apk ]]
then
    echo "APK built"
    # mkdir -p output
    # find platforms/android/app/build/outputs/apk -type f -iname *.apk -exec cp -v {} output/
else
    echo "No APK found!"
    exit 1
fi
