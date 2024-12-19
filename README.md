## custom-mkshrc-android
- A simple Magisk module that allows you to load the Android default shell configuration from internal storage (/sdcard/.config/shrc), making it easy to set up your custom configurations, aliases, and more.
- includes a default shrc with some customizations and useful aliases. you can use `update-shrc` to fetch it directly from the repo

#### How To install ?
- Download The Module
- Install Via magisk , kernel su or apatch
- reboot
- Make sure no other magisk modules is interfering with mkshrc otherwise this module won't work
- "If you are use Termux, you can run the following command in Termux's default shell after installing the module to make Termux use the module's configuration:"
```
termux-setup-storage
echo "source /system/etc/mkshrc" >> ~/.bashrc
exit
```

###### Bugs
-  may not work in a non-root shell environment that doesn't have permission to access internal storage; in that case it will fall back to the default.

