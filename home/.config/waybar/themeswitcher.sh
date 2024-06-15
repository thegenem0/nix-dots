#!/bin/bash

# ----------------------------------------------------- 
# Default theme folder
# ----------------------------------------------------- 
themes_path="$HOME/.config/waybar/themes"

# ----------------------------------------------------- 
# Initialize arrays
# ----------------------------------------------------- 
listThemes=""
listNames=""

# ----------------------------------------------------- 
# Read theme folder
# -----------------------------------------------------
sleep 0.2 
options=$(find $themes_path -maxdepth 2 -type d)
for value in $options
do
    if [ ! $value == "$HOME/.config/waybar/themes/assets" ]; then
        if [ ! $value == "$themes_path" ]; then
            if [ $(find $value -maxdepth 1 -type d | wc -l) = 1 ]; then
                result=$(echo $value | sed "s#$HOME/.config/waybar/themes/#/#g")
                IFS='/' read -ra arrThemes <<< "$result"
                listThemes[${#listThemes[@]}]="/${arrThemes[1]};$result"
                if [ -f $themes_path$result/config.sh ]; then
                    source $themes_path$result/config.sh
                    listNames+="$theme_name\n"
                else
                    listNames+="/${arrThemes[1]};$result\n"
                fi
            fi
        fi
    fi
done

# ----------------------------------------------------- 
# Show rofi dialog
# ----------------------------------------------------- 
listNames=${listNames::-2}
choice=$(echo -e "$listNames" | rofi -dmenu -replace -i -config ~/.config/rofi/config-themes.rasi -no-show-icons -width 30 -p "Themes" -format i)

# ----------------------------------------------------- 
# Set new theme by writing the theme information to ~/.cache/.themestyle.sh
# ----------------------------------------------------- 
if [ "$choice" ]; then
    echo "Loading waybar theme..."
    echo "${listThemes[$choice+1]}" > ~/.cache/.themestyle.sh
    ~/.config/waybar/launch.sh
fi
