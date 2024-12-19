mkdir -p "$MODPATH/system/etc"
mkdir -p "/sdcard/.config"
cp "/system/etc/mkshrc" "$MODPATH/system/etc/mkshrc"
MKSHRC_LINES='CM="/sdcard/.config/shrc"
if [[ -r "$CM" ]]; then
    source "$CM"
fi'
if ! grep -Fq 'CM="/sdcard/.config/shrc"' "$MODPATH/system/etc/mkshrc"; then
    echo "$MKSHRC_LINES" >> "$MODPATH/system/etc/mkshrc"
fi
cp "$MODPATH/shrc" "/sdcard/.config"
set_perm_recursive "$MODPATH" 0 0 0755 0644
rm "$MODPATH/shrc"
ui_print "Installation Completed"
