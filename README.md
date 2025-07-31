1. install debian minimal
  ```
  # burn debian iso on 1st usb
  sudo mkfs.vfat -F 32 -I /dev/sda
  wget -O debian.iso https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-12.11.0-amd64-netinst.iso
  sudo dd if=debian.iso of=/dev/sda bs=4M

  # get wifi firmware on 2nd usb
  sudo mkfs.vfat -F 32 -I /dev/sdb
  wget https://cdimage.debian.org/cdimage/unofficial/non-free/firmware/bullseye/current/firmware.tar.gz
  sudo mkdir -p /media/romain/usb
  sudo mount /dev/sdb /media/romain/usb
  sudo tar zxvf firmware.tar.gz -C /media/romain/usb
  sudo umount /media/romain/usb  
  ```
  - reboot to UEFI mode
  - no desktop environment
  - with core utilities 

2. install sudo user
  ```
  su -
  apt-get install sudo
  visudo
  ```
  - add user privilege specification
  ```
  romain  ALL=(ALL:ALL) ALL
  ```
  ```
  exit
  exit
  ```

3. install debian-dwm repo
  ```
  sudo apt-get install -y git
  git config --global user.email "romain.g.ducrocq@gmail.com"
  git config --global user.name "romainducrocq"
  cd /opt
  sudo git clone https://github.com/romainducrocq/debian-dwm
  sudo chown -R romain /opt/debian-dwm
  cd debian-dwm
  ./install.sh
  sudo reboot
  ```

4. start window manager
   ```
   startx
   ```

5. configure pavucontrol
  - unmute Playback, Input Devices, Output Devices
  - Configuration > Analog Stereo Duplex

6. configure librewolf
  - Settings > [ ] Delete cookies and site data when LibreWolf is closed
  - Settings > [x] Remember browsing and download history
  - Settings > [x] Remember search and form history
  - Settings > [ ] Clear history when LibreWolf closes

