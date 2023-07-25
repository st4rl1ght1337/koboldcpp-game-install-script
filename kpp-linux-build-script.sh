#!/bin/bash
echo "This is the bash script for building Kobold on Linux"
if unzip linux-kobold.zip ; then
   echo "Unzip successful"
else
    echo "error, unzip unsuccessful, exiting fail"
    exit 1
fi    
cd linux-kobold
if make ; then
    echo "Build successful!"
    exit 0
else
    echo "build unsuccessful, exiting fail"
    exit 1
fi


