# update
sudo apt-get update
sudo apt-get upgrade -y

# enable librewolf
sudo apt-get update
sudo apt-get install -y extrepo
sudo extrepo enable librewolf
sudo apt-get update

# install packages
sudo apt-get install -y $(cat aptitude.search | cut -d" " -f3 | tr '\n' ' ')

#install pywal16
pipx install pywal16
pipx ensurepath

# install configs
cp -v .xinitrc ${HOME}
cp -v .gitcongif ${HOME}
mkdir -p ${HOME}/.dwm
cp -v autostart.sh ${HOME}/.dwm
mkdir -p ${HOME}/.librewolf
cp -v librewolf.overrides.cfg ${HOME}/.librewolf

# enable services
sudo systemctl --user enable pulseaudio.service
sudo systemctl --user enable bluetooth.service

# install dwm
cd dwm-flexipack
sudo make clean install
cd ..

cd dwmblocks
sudo make clean install
cd ..

# install st
cd st
sudo make clean install
cd ..
