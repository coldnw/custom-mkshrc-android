## custom-mkshrc-android
- A simple Magisk Module which allows you to load android default shell configuration from Internal Storage (/sdcard/.config/shrc)

#### How To install ?
- Download The Module
- Install Via magisk , kernel su or apatch
- reboot
- Make sure no other magisk modules is interfering with mkshrc otherwise this module won't work

###### Bugs
-  may not work in a non-root shell environment that doesn't have permission to access internal storage; in that case it will fall back to the default.

