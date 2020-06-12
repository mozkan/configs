#/bin/bash

# Install packages.
sudo apt install vim dconf-cli i3 rofi firefox feh tree gnome-terminal

# Configure terminal
../terminal/configure_terminal.sh

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install powerline fonts
git clone https://github.com/powerline/fonts.git ~/Downloads
~/Downloads/fonts/install.sh
# rm ~/Downloads/fonts

# Configure git
git config --global user.name "Murat Ozkan"
git config --global user.email murat.ozkan946@gmail.com
git config --global core.editor vim

# Put wallpapers in Pictures/wallpapers
cp -r ../wallpapers ~/Pictures
