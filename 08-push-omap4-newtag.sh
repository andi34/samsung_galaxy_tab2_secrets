#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-6.0
GTAB2TAG="aosp-6.0.1_r61-tab2"

# Let push all commits!
echo "----------------------------------------"
echo ""
echo "       P U S H  T A B 2 - T A G         "
echo "  SAMSUNG GALAXY TAB2 - AOSP ADDITIONS  "
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git tag -a $GTAB2TAG -m 'Android 6.0.1 R61 for OMAP4 with some additions'
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_build.git $GTAB2TAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git tag -a $GTAB2TAG -m 'Android 6.0.1 R61 for OMAP4 with some additions'
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_av.git $GTAB2TAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
git tag -a $GTAB2TAG -m 'Android 6.0.1 R61 for OMAP4 with some additions'
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_base.git $GTAB2TAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git tag -a $GTAB2TAG -m 'Android 6.0.1 R61 for OMAP4 with some additions'
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_native.git $GTAB2TAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/opt/telephony
git tag -a $GTAB2TAG -m 'Android 6.0.1 R61 for OMAP4 with some additions'
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_opt_telephony.git $GTAB2TAG
echo ""
echo "----------------------------------------"
cd $SAUCE/hardware/ril
git tag -a $GTAB2TAG -m 'Android 6.0.1 R61 for OMAP4 with some additions'
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_hardware_ril.git $GTAB2TAG
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Settings
git tag -a $GTAB2TAG -m 'Android 6.0.1 R61 for OMAP4 with some additions'
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_packages_apps_Settings.git $GTAB2TAG
echo ""
echo "----------------------------------------"
cd $SAUCE/system/core
git tag -a $GTAB2TAG -m 'Android 6.0.1 R61 for OMAP4 with some additions'
git push https://github.com/SamsungGalaxyTab2-AOSP/aosp_system_core.git $GTAB2TAG
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"
