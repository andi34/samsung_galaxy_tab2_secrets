#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-6.0

# Let's apply all commits!
echo "----------------------------------------"
echo ""
echo "  SAMSUNG GALAXY TAB2 - AOSP ADDITIONS  "
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git fetch https://github.com/SamsungGalaxyTab2-AOSP/aosp_build.git aosp-6.0.1_r61-tab2
git cherry-pick b7c91779a2d3c18a91cec3fbc4be0815ace1dd56^..305b58942dc24b48337646a861a1f51e4cd83e75
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_base.git aosp-6.0.1_r61-tab2
git cherry-pick fdd9e3d9db75067c4696eb11bb41524599e94032^..b24c61a96c53c97783fc2d61b88da0e20c5dcc98
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
https://github.com/SamsungGalaxyTab2-AOSP/aosp_frameworks_native.git aosp-6.0.1_r61-tab2
git cherry-pick 9f68c2da0274b9a14ededf849b6501f5694cf30a^..0601a099e615614c1cf05ebe55f59d5a9f63e4fe
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Settings
https://github.com/SamsungGalaxyTab2-AOSP/aosp_packages_apps_Settings.git aosp-6.0.1_r61-tab2
git cherry-pick 63a31a2743e49e198e44ea79abbc79721812bd60^..eb5d01e60ceae20287448a0e42fd7c265417b251
echo ""
echo "----------------------------------------"
cd $SAUCE/system/core
https://github.com/SamsungGalaxyTab2-AOSP/aosp_system_core.git aosp-6.0.1_r61-tab2
git cherry-pick db95b3c014558daa4785f97903e7ed44d987830c
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"
