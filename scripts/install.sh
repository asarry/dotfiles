# Update
sudo pacman -Syu

# Remove a few Manjaro pre-installed packages
sudo pacman -R thunderbird steam-manjaro game-devices-udev yakuake konversation cantata

# Install common packages
sudo pacman -S ranger valgrind libreoffice xournalpp discord tigervnc snapd

# Install snap packages
sudo snap install spotify

# Install packages for Vim
sudo pacman -S vim base-devel cmake powerline-fonts ctags

# Download Plug to install Vim plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install pylint with pip3
pip3 install pylint

# Install R and RStudio packages
sudo pacman -S r
sudo pamac build rstudio-desktop-bin

# Install LaTeX packages
sudo pacman -S texlive-most texlive-bin
