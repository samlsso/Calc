#!/bin/bash -v

set -e

if [[ "$TRAVIS_BRANCH" != "master" ]]
then
    echo "Skipping package Android for develop branch"
    exit 0
fi

# mkdir output
# find platforms/android/ -type f -iname *.apk -exec cp -v {} output/
