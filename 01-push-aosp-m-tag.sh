#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-6.0
AOSPTAG="android-6.0.1_r61"

echo "----------------------------------------"
echo ""
echo "       P U S H  A O S P - T A G         "
echo "       UPDATE OMAP4-AOSP PROJECT        "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git remote add base https://android.googlesource.com/platform/build
git fetch base
git push https://github.com/OMAP4-AOSP/android_build.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git remote add base https://android.googlesource.com/platform/frameworks/av
git fetch base
git push https://github.com/OMAP4-AOSP/android_frameworks_av.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
git remote add base https://android.googlesource.com/platform/frameworks/base
git fetch base
git push https://github.com/OMAP4-AOSP/android_frameworks_base.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git remote add base https://android.googlesource.com/platform/frameworks/native
git fetch base
git push https://github.com/OMAP4-AOSP/android_frameworks_native.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/opt/telephony
git remote add base https://android.googlesource.com/platform/frameworks/opt/telephony
git fetch base
git push https://github.com/OMAP4-AOSP/android_frameworks_opt_telephony.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/hardware/ril
git remote add base https://android.googlesource.com/platform/hardware/ril
git fetch base
git push https://github.com/OMAP4-AOSP/android_hardware_ril.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Camera2
git remote add base https://android.googlesource.com/platform/packages/apps/Camera2
git fetch base
git push https://github.com/OMAP4-AOSP/android_packages_apps_Camera2.git $AOSPTAG
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"