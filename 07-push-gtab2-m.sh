#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder

SAUCE=~/android/aosp-6.0

# Let push all commits!
echo "----------------------------------------"
echo ""
echo "              P U S H I N G             "
echo "  SAMSUNG GALAXY TAB2 - AOSP ADDITIONS  "
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git checkout -b aosp-6.0.1_r61
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_build.git HEAD:aosp-6.0.1_r61
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git checkout -b aosp-6.0.1_r61
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_av.git HEAD:aosp-6.0.1_r61
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
git checkout -b aosp-6.0.1_r61
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_base.git HEAD:aosp-6.0.1_r61
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git checkout -b aosp-6.0.1_r61
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_native.git HEAD:aosp-6.0.1_r61
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/opt/telephony
git checkout -b aosp-6.0.1_r61
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_opt_telephony.git HEAD:aosp-6.0.1_r61
echo ""
echo "----------------------------------------"
cd $SAUCE/hardware/ril
git checkout -b aosp-6.0.1_r61
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_hardware_ril.git HEAD:aosp-6.0.1_r61
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Settings
git checkout -b aosp-6.0.1_r61
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_packages_apps_Settings.git HEAD:aosp-6.0.1_r61
echo ""
echo "----------------------------------------"
cd $SAUCE/system/core
git checkout -b aosp-6.0.1_r61
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_system_core.git HEAD:aosp-6.0.1_r61
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"
