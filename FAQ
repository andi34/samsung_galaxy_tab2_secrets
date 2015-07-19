1. How to install a rom?
- backup all important files (e.g. contacts) and store them on your MicroSD-Card or on your PC/Laptop
- copy the rom and gapps you like to install to your MicroSD-Card
- boot into your custom recovery
- make a backup of your current running rom and store it on your MicroSD-Card or on your PC/Laptop
(some of the following are named slight different dependin on the recovery you use)
- wipe cache
- wipe dalvic cache
- wipe/format system
- wipe/format "data and data/media" / Internal Storage
- reboot your recovery once!
- flash rom
- flash gapps (make sure the gapps match the android version of your rom!)
- reboot and give your device some time to do it's first boot!

2.1 How do i check SElinux status of the Rom?
Simply check inside "About the device" inside settings.
Another way would be to use adb or Terminal emulator:
$ adb shell getenforce

2.2 How can i set SELinux to enforced / permissive?
Use adb:
$ adb root
$ adb shell setenforce 0
(for permissive)
$ adb shell setenforce 1
(for enforced)

or Terminal Emulator:
$ su
(grant root access)
$ setenforce 0
(for permissive)
$ setenforce 1
(for enforced)

3. How do i get proper logs?
Well, there are some apps out which can help getting usefull logs, but i prefer using adb to get those logs:

Logcat:
$ adb shell logcat > logcat.txt
(abort/stop logging pressing "Ctrl+C" on your keyboard)

Radio Logcat:
$ adb logcat -b radio -v time -d > logcat_radio.log

Dmesg:
$ adb shell dmesg > dmesg.txt

last_kmsg:
$ adb shell su -c "cat /proc/last_kmsg" > last_kmsg.txt


4. Rom installation failed on "error 7" in recovery, what can i do?
Best will be to post a recovery.log. There's an option inside your recovery to create one.
You can get the log to your PC using adb:
$ adb pull /path/to/log/log.name

If this is not possible for your: tell the whole message you get! There are different "error 7" messages out!
- it could be you used a recovery for a different device (p3100, p3110, p5100 and p5110 have a own recovery!)
- it could be you flashed a file/rom not made for your device
- it could be your recovery is to old (official CWM is to old, a lot of user still use it)

5. Audio stops playing if i leave the app or display turns off, why does this happen?
Simply disable "ok google" and your issue will be solved.

6. My language isn't supported or i found a typo/ wrong translation, where can i help to fix it?
Most Rom Project switched to Crowdin in the meantime which makes it much easier to translate if you don't have any
knowledge about the language files used on Android (strings.xml).
Some Rom-Projects on Crowdin:
SlimRoms: https://crowdin.com/project/slimroms
OmniROM: https://crowdin.com/project/omnirom
CyanogenMod: https://crowdin.com/projects/CyanogenMod

7. Samsung Hardware-Keyboard-Dock isn't workin, what can i do?
Our sec_keyboard driver does not properly unregister the input device when no dock is detected, 
which makes the system believe that a physical keyboard is present at all times, which prevents
the software keyboard from being shown.

Some user own a Keyboard-Dock and meight miss the ability to use the dock if it gets disabled completely.
It's build as module to give the user the ability to add a simple init.d script to start the module at boot
or run the following line using Terminal emulator:

- Make sure you have enabled root in developer-options for "Apps and ADB"!
$ su
(grand root access)
$ insmod /system/lib/modules/sec_dock_keyboard.ko
