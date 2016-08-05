#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-6.0
OMAPTAG="android-6.0.1_r61-omap4"

echo "----------------------------------------"
echo ""
echo "      P U S H  O M A P 4  - T A G       "
echo "       UPDATE OMAP4-AOSP PROJECT        "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git tag -a $OMAPTAG -m 'Android 6.0.1 R61 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_build.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git tag -a $OMAPTAG -m 'Android 6.0.1 R61 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_frameworks_av.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
git tag -a $OMAPTAG -m 'Android 6.0.1 R61 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_frameworks_base.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git tag -a $OMAPTAG -m 'Android 6.0.1 R61 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_frameworks_native.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/opt/telephony
git tag -a $OMAPTAG -m 'Android 6.0.1 R61 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_frameworks_opt_telephony.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/hardware/ril
git tag -a $OMAPTAG -m 'Android 6.0.1 R61 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_hardware_ril.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Camera2
git tag -a $OMAPTAG -m 'Android 6.0.1 R61 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_packages_apps_Camera2.git $OMAPTAG
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"