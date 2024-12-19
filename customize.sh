mkdir -p "$MODPATH/system/etc"
mkdir -p "/sdcard/.config"
cp "/system/etc/mkshrc" "$MODPATH/system/etc/mkshrc"
echo 'CM="/sdcard/.config/shrc"
if [[ -r "$CM" ]]; then
    source "$CM"
fi' >> "$MODPATH/system/etc/mkshrc"
cp "$MODPATH/shrc" "/sdcard/.config"
set_perm_recursive "$MODPATH" 0 0 0755 0644
ui_print " Installation Completed "
