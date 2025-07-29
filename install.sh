# update
sudo apt-get update
sudo apt-get upgrade -y

# install packages
sudo apt-get install -y bat gcc make nano neofetch tar tree unzip wget \
    libx11-dev libxft-dev libxinerama-dev sharutils x11-xserver-utils xorg \
    libxcb1-dev libx11-xcb-dev libxcb-res0-dev libharfbuzz-dev \
    brightnessctl dbus dbus-x11 dmenu feh picom rofi slock xclip zip \
    alsa-tools alsa-utils pulseaudio pavucontrol pulseaudio-module-bluetooth pasystray \
    wpasupplicant wireless-tools network-manager network-manager-gnome gnome-keyring

# install librewolf
sudo apt-get update
sudo apt-get install -y extrepo
sudo extrepo enable librewolf
sudo apt-get update
sudo apt-get install librewolf

# install configs
cp -v .xinitrc ${HOME}
cp -v .gitconfig ${HOME}
mkdir -p ${HOME}/.librewolf
cp -v librewolf.overrides.cfg ${HOME}/.librewolf
mkdir -p ${HOME}/.config/rofi
cp -v config.rasi ${HOME}/.config/rofi
sudo cp -v 30-touchpad.conf /etc/X11/xorg.conf.d
sudo cp -v NetworkManager.conf /etc/NetworkManager
sudo rm -v /etc/network/interfaces
echo "export PATH=\"$PATH:/opt/bin\"" >> ~/.bashrc

# install fonts
sudo cp -rv fonts/Iosevka /usr/share/fonts
fc-cache -fv

# install dwm
cd dwm-flexipatch
./build.sh
cd ..

cd dwmblocks
./build.sh
cd ..

# install st
cd st-flexipatch
./build.sh
cd ..

# enable services
systemctl --user enable pulseaudio.service
sudo systemctl enable NetworkManager.service
sudo systemctl enable wpa_supplicant.service
sudo systemctl start NetworkManager.service
sudo systemctl start wpa_supplicant.service
sudo NetworkManager
# sudo systemctl enable bluetooth.service
