#!/bin/bash
echo "This is the bash script for building Kobold on Linux"
cd "$1"
# needed for getting to correct zip dir, get user:// path as first arg.
touch unzipping.lock
if unzip linux-kobold.zip ; then
   echo "Unzip successful"
else
    echo "error, unzip unsuccessful, exiting fail"
    exit 1
fi    
cd koboldcpp-game-concedo
    touch building.lock
if make ; then
    cd "$1"
    echo "Build successful!"
    touch build_success.lock
    exit 0
else
    cd "$1"
    echo "build unsuccessful, exiting fail"
    touch build_failure.lock
    exit 1
fi


