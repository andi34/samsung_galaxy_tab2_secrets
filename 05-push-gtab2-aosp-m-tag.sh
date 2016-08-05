#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder

SAUCE=~/android/aosp-6.0
AOSPTAG="android-6.0.1_r61"

# Let push all commits!
echo "----------------------------------------"
echo ""
echo "       P U S H  A O S P - T A G         "
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_build.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_av.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_base.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_native.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/opt/telephony
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_opt_telephony.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/hardware/ril
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_hardware_ril.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Settings
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_packages_apps_Settings.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/system/core
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_system_core.git $AOSPTAG
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"
