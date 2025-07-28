# update
sudo apt-get update
sudo apt-get upgrade -y

# enable librewolf
sudo apt-get update
sudo apt-get install -y extrepo
sudo extrepo enable librewolf
sudo apt-get update

# install packages
sudo apt-get install -y gcc make wget xorg \
    libx11-dev libxft-dev libxinerama-dev sharutils x11-xserver-utils \
    libxcb1-dev libx11-xcb-dev libxcb-res0-dev libharfbuzz-dev \
    dmenu feh picom rofi slock xclip \
    dbus dbus-x11 \
    alsa-tools pulseaudio pavucontrol pulseaudio-module-bluetooth \
    network-manager network-manager-gnome \
    extrepo librewolf \
    bat nano neofetch tar tree unzip

# install configs
cp -v .xinitrc ${HOME}
cp -v .gitconfig ${HOME}
mkdir -p ${HOME}/.librewolf
cp -v librewolf.overrides.cfg ${HOME}/.librewolf
mkdir -p ${HOME}/.config/rofi
cp -v config.rasi ${HOME}/.config/rofi
sudo cp -v 30-touchpad.conf /etc/X11/xorg.conf.d
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
# sudo systemctl enable bluetooth.service
