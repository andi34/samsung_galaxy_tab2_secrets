#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-6.0

echo "----------------------------------------"
echo ""
echo "          F O R C E  P U S H            "
echo "       UPDATE OMAP4-AOSP PROJECT        "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git branch -D aosp-6.0
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git branch -D aosp-6.0
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
git branch -D aosp-6.0
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git branch -D aosp-6.0
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/opt/telephony
git branch -D aosp-6.0
echo ""
echo "----------------------------------------"
cd $SAUCE/hardware/ril
git branch -D aosp-6.0
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Camera2
git branch -D aosp-6.0
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"