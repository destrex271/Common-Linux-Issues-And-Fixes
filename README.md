# Issues with Synaptics and ELAN trackpads #

##  Problems that you might be facing ##

- Trackpad does not respond to any input but external mouse works.
- Trackpad is detected as PS2 mouse, might be working but would not support any standard gestures.
- Trackpad is detected but it still does not respond to any input

## Solutions ##

1. ### Installing the synaptics drivers ###
    - First install the xorg synaptics driver `sudo apt install xserver-xorg-input-synaptics`
    - Then we need to reinstall all the libinput packages `sudo apt --purge autoremove xserver-xorg-input-all && sudo apt install xserver-xorg-input-all`
    - Reboot your system.
    - blacklist the default elan driver : `blacklist elan_i2c`
    - Update the system initramfs as : `sudo update-initramfs -k all -u -v`
    - Your trackpad should be fine now, but if you are still facing the same problem try booting into your linux environment by using the UEFI boot menu instead of grub. It can be accessed by pressing the `F9` key(may vary for system to system). This usually "unlocks" your trackpad.
2. ### Automated Script ###
    - Please use this method only if the previous approach doesn't work.
    - Try running the `touchpadFix.sh` script in this repository on your system.
    - For more clarification please refer the source for this fix : https://www.reddit.com/r/Ubuntu/comments/sfpz9p/posible_fix_hp_pavilion_gaming_15ecxxxx_elantech/


## Reasons for this problem ##

This particular problem is faced in case of trackpads either provided by synaptics or elan.
This problem is caused by mixed effects of some missing drivers and some conflicts with your bios settings.
