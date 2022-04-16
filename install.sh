#!/bin/bash
# update becuase we do any upgrades
sudo pacman -Syu


# installing initial programs
# things to install

# Install Aur Helper "Yay"
sudo pacman -S yay

# Install multiple programs
sudo pacman -R palemoon-bin
sudo pacman -S brave
sudo pacman -S manjaro-tools --noconfirm --needed
sudo pacman -S neofetch --noconfirm --needed
sudo pacman -S vim --noconfirm --needed
sudo pacman -S neovim --noconfirm --needed
sudo pacman -S thunar --noconfirm --needed
sudo pacman -S xfce4
sudo pacman -S xfce4-goodies --noconfirm --needed
sudo pacman -S xfce4-terminal --noconfirm --needed
sudo pacman -S xfce4-settings-manager --noconfirm --needed
sudo pacman -S xfce4-power-manager --noconfirm --needed
sudo pacman -S ranger --noconfirm --needed
sudo pacman -S arandr --noconfirm --needed
sudo pacman -S chromium --noconfirm --needed
sudo pacman -S dmenu --noconfirm --needed
sudo pacman -S rofi --noconfirm --needed
sudo pacman -S gnome-boxes --noconfim --needed
sudo pacman -S visual-studio-code-bin --noconfim --needed
sudo pacman -S bauh --noconfirm needed
sudo pacman -S nitrogen --noconfirm --needed
sudo pacman -S steam --noconfirm --needed
sudo pacman -S discord --noconfirm --needed
sudo pacman -S mpv --noconfirm --needed
sudo pacman -S vlc --noconfirm --needed
sudo pacman -S discord --noconfirm --needed
sudo pacman -S nitrogen --noconfirm --needed
sudo pacman -S alsi --noconfirm --needed
sudo pacman -S timeshift --noconfirm --needed
sudo pacman -S nitrogen --noconfirm --needed
sudo pacman -S cinnamon --noconfirm --needed
sudo pacman -S nitrogen --noconfirm --needed
sudo pacman -S libreoffice --noconfirm --needed
sudo pacman -S picom --noconfirm --needed
sudo pacman -S meld --noconfirm --needed
sudo pacman -S picom --noconfirm --needed
sudo pacman -S deja-dup --noconfirm --needed
sudo pacman -S manjaro-settings-manager --noconfirm --needed
sudo pacman -S archiso-git --noconfirm --needed
sudo pacman -S polybar --noconfirm --needed
sudo pacman -S ttf-noto-sans-kannada --noconfirm --needed
sudo pacman -S ttf-times-new-roman --noconfirm --needed
sudo pacman -S ttf-jetbrains --noconfirm --needed
sudo pacman -S ttf-google-sans --noconfirm --needed
sudo pacman -S ttf-unifont --noconfirm --needed
sudo pacman -S flameshot --noconfirm --needed
sudo pacman -S gedit --noconfirm --needed
sudo pacman -S pavucontrol --noconfirm --needed
sudo pacman -S pulseaudio --noconfirm --needed
sudo pacman -S zip --noconfirm --needed
sudo pacman -S xarchiver --noconfirm --needed


# installing stacer, librewolf, pamac, youtube-dl, popsicle, timeshift
yay -S stacer
yay -S librewolf
yay -S pamac-all
yay -S popsicle
yay -S youtube-dl-gui
yay -S timeshift
yay -S optimus-manager-qt

# installing snap-store
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# installing Snaps from Snap Store
sudo snap install spotify 
sudo snap install teams

# installing blackarch
# Run https://blackarch.org/strap.sh as root and follow the instructions.
curl -O https://blackarch.org/strap.sh

# Verify the SHA1 sum
echo 95b485d400f5f289f7613fe576f4a3996aabed62 strap.sh | sha1sum -c

# Set execute bit
chmod +x strap.sh

# Run strap.sh
sudo ./strap.sh

# Enable multilib following https://wiki.archlinux.org/index.php/Official_repositories#Enabling_multilib and run:
sudo pacman -Syu

# installing chaotic aur
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

# installing backgrounds from github
git clone https://github.com/Maverik0071/Background3.git
git clone https://github.com/Maverik0071/Backgrounds2.git
git clone https://github.com/Maverik0071/Backgrounds.git

# Installing LunarVim
sudo pacman -S neovim

# Lunarvim installation
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

# Now we reboot and another programs will just have to be downloaded separately (Have fun)
sudo reboot 

..Have fun...
