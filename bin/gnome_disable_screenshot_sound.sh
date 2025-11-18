mkdir -p ~/.local/share/sounds/__custom
touch ~/.local/share/sounds/__custom/screen-capture.disabled
cat << 'EOF' > ~/.local/share/sounds/__custom/index.theme
[Sound Theme]
Name=__custom
Inherits=freedesktop
Directories=.
EOF
gsettings set org.gnome.desktop.sound theme-name '__custom'

