#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-6.0

NEWTAG="tags/android-6.0.1_r61"

# Let's apply all commits!
echo "----------------------------------------"
echo ""
echo "       UPDATE OMAP4-AOSP PROJECT        "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git remote add base https://android.googlesource.com/platform/build
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_build.git android-6.0.1_r61-omap4
git cherry-pick b19d9918214bb4bf70ee630836d92f2c89cf44b4^..63e19bcacd9413db25f99aebdecb9cf2699ca78d
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git remote add base https://android.googlesource.com/platform/frameworks/av
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_frameworks_av.git android-6.0.1_r61-omap4
git cherry-pick 755ac8197e72bad6e7666071b228872a68d7f553^..490e4fd3696fd9ff857b01fac3c70cf60ba25660
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
git remote add base https://android.googlesource.com/platform/frameworks/base
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_frameworks_base.git android-6.0.1_r61-omap4
git cherry-pick a863337861c0239025e36d7f960dd1f1e36b2c5e^..bcbc6d06a9596cdcb20f2cc3da3142fc403faf19
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git remote add base https://android.googlesource.com/platform/frameworks/native
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_frameworks_native.git android-6.0.1_r61-omap4
git cherry-pick 8c664b4d388ddffb757c800dbc058f8e0b237b7b^..63186996a5dd72accd21c0a76a56125fd5c9be7f
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/opt/telephony
git remote add base https://android.googlesource.com/platform/frameworks/opt/telephony
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_frameworks_opt_telephony.git android-6.0.1_r61-omap4
git cherry-pick 3f2019aa990dec9bf66d512a0feeea57b96b3084^..db8db4477845c865c1b72774b14282f6e861b785
echo ""
echo "----------------------------------------"
cd $SAUCE/hardware/ril
git remote add base https://android.googlesource.com/platform/hardware/ril
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_hardware_ril.git android-6.0.1_r61-omap4
git cherry-pick c00fab9e650994660c8b35266cfe0145f935cd6c
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Camera2
git remote add base https://android.googlesource.com/platform/packages/apps/Camera2
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_packages_apps_Camera2.git android-6.0.1_r61-omap4
git cherry-pick 5cefd4d4c2e38bc0de49848e1f4c9fdae817403e
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"