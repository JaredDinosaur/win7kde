#!/bin/bash
echo "This script must be run as a user with sudo privileges (NOT root)!"
echo "This package requires yay!"
echo "Press Enter to continue or Ctrl+C to exit..."
read

clear
yay -S cmake extra-cmake-modules ninja qt6-virtualkeyboard qt6-multimedia qt6-5compat plasma-wayland-protocols plasma5support kvantum base-devel ksysguard6-git dialog
git clone https://gitgud.io/wackyideas/aerothemeplasma
cd aerothemeplasma
./compile.sh
./install_plasmoids.sh
chmod +x ./install_plasma_components.sh
./install_plasma_components.sh
cp -r misc/kvantum ~/.config
tar -zxf misc/sounds/sounds.tar.gz -C ~/.local/share/sounds
tar -zxf 'misc/icons/Windows 7 Aero.tar.gz' -C ~/.local/share/icons
sudo tar -zxf misc/cursors/aero-drop.tar.gz -C /usr/share/icons
cd misc/mimetype
cp -r ./* ~/.local/share/mime/packages
update-mime-database ~/.local/share/mime
cd ..
cd ..
cp -r kwin/effects ~/.local/share/kwin
cp -r kwin/outline ~/.local/share/kwin
cp -r kwin/scripts ~/.local/share/kwin
cp -r kwin/tabbox ~/.local/share/kwin
cp -r misc/fontconfig ~/.config
sudo echo QML_DISABLE_DISTANCEFIELD=1 > /etc/environment
cp -r misc/branding ~/.config/kdedefaults
cd ..
git clone https://gitgud.io/wackyideas/linver.git
cd linver
chmod +x add_rule.sh
./install.sh
./add_rule.sh
echo
echo
echo
echo "Done!"
echo ""
echo "Additional steps:"
echo "- Set kvantum theme"
echo "- Set cursor (remember to disable launch feedback)"
echo "- Install and set Segoe UI font at 9pt for everything except Fixed Width"
echo "- Apply global theme"
echo "- Add Aero panel"
echo "- Change wallpaper layout"
echo "- Hide system tray icons except sound, power, network and notifications"
echo "- Disable logout confirmation in Session"
echo "- Disable Peek At Desktop shortcut"
echo "- Change task switcher to Thumbnail Seven + Flip Switch"
echo "- Enable SMOD Peek and MinimizeAll kwin scripts"
echo "- Bind Meta+D to MinimizeAll"
echo "- Enable Aero Glass Blur, Aero Glide, Desaturate Unresponsive Applications, Fading Popups, Login, SMOD Glow, SMOD Snap, Squash, SMOD Peek, and Dim Screen for Admin desktop effects"
echo "- Disable Background Contrast, Blur, Maximize, Sliding Popups, Dialog Parent, Dim Inactive and Logout desktop effects"
echo "- Set login screen to SMOD"
echo "- Apply Plasma Settings for login screen"
echo "- Set date format"
echo "- Install Geckium (optional)"
echo "- Disable Konsole toolbars"
echo "- Install TerminalVector font"
echo "- Set Konsole font to TerminalVector at 9pt (disable smooth and bold)"
echo "- Set Konsole colours to White On Black (text c0c0c0)"
echo "- Set Konsole cursor shape to underline and enable blinking"
echo "- Set Konsole line spacing and margins to 0"
echo "- Edit bashrc (optional)"
echo "- Set Konsole tab title to Command Prompt"
echo "- Remove help and pin control in Window Decorations"

