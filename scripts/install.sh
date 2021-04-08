# Update
sudo pacman -Syu

# Remove a few Manjaro pre-installed packages
sudo pacman -R thunderbird steam game-devices-udev yakuake konversation cantata

# Install common packages
sudo pacman -S terminator git libreoffice discord snapd

# Install snap packages
sudo snap install spotify zoom-client

# Install packages for Vim
sudo pacman -S vim base-devel cmake powerline-fonts ctags

# Download Plug to install Vim plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install a few linters with pip3
pip3 install pylint cpplint
