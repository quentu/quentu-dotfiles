#!/bin/bash

WALL="$1"

awww img "$WALL" \
    --transition-type wipe \
    --transition-step 100 \
    --transition-angle 45 \
    --transition-duration 2 \
    --transition-fps 60

#sleep 1.5

"$HOME/.local/bin/wal" -i "$WALL" -n

source "$HOME/.cache/wal/colors.sh"

#rm -rf ~/.cache/waypaper/cache.jpg
#cp $WALL ~/.cache/waypaper/cache.jpg
#cp $WALL /var/cache/waypaper-cache/cache.jpg
##############
# For Chrome #
##############

source "$HOME/.bin/pywalium/generate.sh"


###################
# For Mako Colors #
###################

cat > "$HOME/.cache/wal/colors-mako" << EOF
background-color=${background}99
text-color=${foreground}ff
border-color=${color4}99
EOF

###########################
# Reload System Processes #
###########################

pkill swayosd-server 2>/dev/null
swayosd-server &
hyprctl reload
makoctl reload

#notify-send "Wallpaper Changed" "Colors have been reloaded"

###################################################
# Rebuild Promix-Wal every time wallpaper changes #
###################################################

SRC_ICON_THEME="$HOME/.local/share/icons/Promix"
WAL_ICON_THEME="$HOME/.local/share/icons/Promix-Wal"

rm -rf "$WAL_ICON_THEME"
cp -r "$SRC_ICON_THEME" "$WAL_ICON_THEME"

sed -i 's/^Name=.*/Name=Promix-Wal/' "$WAL_ICON_THEME/index.theme"

# Recolor Promix folders
find "$WAL_ICON_THEME" -type f -name "*.svg" -print0 | while IFS= read -r -d '' file; do
    sed -i -E \
        "s/color:#[0-9A-Fa-f]{6};/color:${color4};/g" \
        "$file"
done

gtk-update-icon-cache -f "$WAL_ICON_THEME" >/dev/null 2>&1

# KDE/Dolphin icon theme switch
kwriteconfig6 --file kdeglobals --group Icons --key Theme Promix-Wal
kbuildsycoca6 >/dev/null 2>&1



