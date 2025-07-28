# update
sudo apt-get update
sudo apt-get upgrade -y

# enable librewolf
sudo apt-get update
sudo apt-get install -y extrepo
sudo extrepo enable librewolf
sudo apt-get update

# install packages
# sudo apt-get install -y $(cat aptitude.search | cut -d" " -f3 | tr '\n' ' ')
./install_packages.sh

# install configs
cp -v .xinitrc ${HOME}
cp -v .gitconfig ${HOME}
mkdir -p ${HOME}/.librewolf
cp -v librewolf.overrides.cfg ${HOME}/.librewolf
mkdir -p ${HOME}/.config/rofi
cp -v config.rasi ${HOME}/.config/rofi
echo "export PATH=\"$PATH:/opt/bin\"" > ~/.bashrc

# install fonts
sudo cp -rv fonts/iosevka /usr/share/fonts
fc-cache -fv

# install dwm
cd dwm-flexipatch
sudo ./build.sh
cd ..

cd dwmblocks
sudo ./build.sh
cd ..

# install st
cd st-flexipatch
sudo ./build.sh
cd ..

# enable services
systemctl --user enable pulseaudio.service
# sudo systemctl enable bluetooth.service
