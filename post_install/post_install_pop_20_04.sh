#!/bin/bash

# pop!_OS 20.04 (focal)

# upgrade
sudo apt update && sudo apt upgrade -y && sudo apt autoremove

# nvidia
sudo apt-add-repository ppa:graphics-drivers/ppa &&
sudo apt update &&
sudo ubuntu-drivers autoinstall

sudo apt install -y nvidia-prime

# git
sudo add-apt-repository ppa:git-core/ppa &&
sudo apt update &&
sudo apt install -y git

# make
sudo apt install -y make

# node-typescript
sudo apt install -y node-typescript

# tweeks and extensions
sudo apt install -y gnome-tweaks &&
sudo apt install -y gnome-shell-extensions &&
sudo apt install -y chrome-gnome-shell &&
sudo apt install -y gnome-shell-extension-weather &&
sudo apt install -y x11-utils &&
sudo apt install -y gir1.2-gtop-2.0 lm-sensors gnome-shell-extension-prefs &&
mkdir -p ~/.local/share/gnome-shell/extensions &&
git clone https://github.com/corecoding/Vitals.git ~/.local/share/gnome-shell/extensions/Vitals@CoreCoding.com
# https://extensions.gnome.org/extension/1319/gsconnect/
# after: press Alt + F2 and enter r in the box

# dash-to-dock
git clone https://github.com/micheleg/dash-to-dock.git &&
cd dash-to-dock &&
make &&
make install

# icons
sudo add-apt-repository -u ppa:snwh/ppa &&
sudo apt install paper-icon-theme

# wallpapers
sudo apt-get install -y ubuntu-wallpapers*

# gparted
sudo apt install -y gparted

# htop
sudo apt install -y htop

# inkscape
sudo apt install -y inkscape

# audacity
sudo apt install -y audacity

# epub reader
sudo apt install -y fbreader
sudo apt install -y okular

# rclone
sudo apt install -y rclone

# unrar
sudo apt install -y unrar

# adobe flash
sudo apt install -y flashplugin-installer

# darktable
sudo apt install -y darktable

# fonts
sudo apt install -y ubuntu-restricted-extras ttf-mscorefonts-installer

# obs studio
sudo apt-get install -y ffmpeg &&
sudo add-apt-repository ppa:obsproject/obs-studio &&
sudo apt-get update &&
sudo apt-get install -y obs-studio

# java
sudo apt install -y default-jre default-jdk

# r
# https://rtask.thinkr.fr/installation-of-r-4-0-on-ubuntu-20-04-lts-and-tips-for-spatial-packages/
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 &&
gpg --keyserver keyserver.ubuntu.com --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9 &&
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add - &&
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/" &&
sudo apt update &&
sudo apt install -y r-base r-base-core r-recommended r-base-dev # r

sudo apt install -y gdal-bin &&
sudo apt install -y libgdal-dev &&
sudo apt install -y libproj-dev &&
sudo apt install -y libssl-dev &&
sudo apt install -y libavfilter-dev &&
sudo apt install -y xml2 &&
sudo apt install -y libxml2-dev &&
sudo apt install -y libgeos-dev &&
sudo apt install -y libudunits2-dev &&
sudo apt install -y gfortran-7 &&
sudo apt install -y gcc-7 g++-7 &&
sudo apt install -y libxml2-dev &&
sudo apt install -y libssl-dev &&
sudo apt install -y libcurl4-openssl-dev &&
sudo apt install -y libv8-dev &&
sudo apt install -y libprotobuf-dev &&
sudo apt install -y libjq-dev &&
sudo apt install -y protobuf-compiler &&
sudo apt install -y libgmp3-dev &&
sudo apt install -y libgtk2.0-dev &&
sudo apt install -y xvfb &&
sudo apt install -y xauth &&
sudo apt install -y xfonts-base &&
sudo apt install -y libxt-dev &&
sudo apt install -y libgsl-dev &&
sudo apt install -y libmagick++-dev &&
sudo R CMD javareconf

# qgis
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 6B827C12C2D425E227EDCA75089EBE08314DF160 &&
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable &&
sudo apt update &&
sudo apt install -y qgis qgis-plugin-grass saga

# grass
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 6B827C12C2D425E227EDCA75089EBE08314DF160 &&
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable &&
sudo apt update &&
sudo apt install -y grass

## flatpak ------------------------------------------------------------------------------------

# gimp
flatpak install -y flathub org.gimp.GIMP

# photogimp
wget -c https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip &&
unzip PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip

# telegram
flatpak install -y flathub org.telegram.desktop

# discord
flatpak install -y flathub com.discordapp.Discord

# vlc
flatpak install -y flathub org.videolan.VLC

## dpkgs --------------------------------------------------------------------------------------
# rstudio
wget -c https://s3.amazonaws.com/rstudio-ide-build/desktop/bionic/amd64/rstudio-1.4.1087-amd64.deb &&
sudo dpkg -i rstudio-1.4.1087-amd64.deb
sudo apt install -fy &&
rm rstudio-1.4.1087-amd64.deb

# libreoffice
wget https://download.documentfoundation.org/libreoffice/stable/6.4.7/deb/x86_64/LibreOffice_6.4.7_Linux_x86-64_deb.tar.gz
tar -xvf LibreOffice_6.4.7_Linux_x86-64_deb.tar.gz
cd LibreOffice_6.4.7.2_Linux_x86-64_deb/DEBS
sudo dpkg -i *.deb
cd ..; cd ..
rm -r LibreOffice_6.4.7.2_Linux_x86-64_deb
rm LibreOffice_6.4.7_Linux_x86-64_deb.tar.gz

wget http://download.documentfoundation.org/libreoffice/stable/6.4.7/deb/x86_64/LibreOffice_6.4.7_Linux_x86-64_deb_langpack_pt-BR.tar.gz
tar -xvf LibreOffice_6.4.7_Linux_x86-64_deb_langpack_pt-BR.tar.gz
cd LibreOffice_6.4.7.2_Linux_x86-64_deb_langpack_pt-BR/DEBS
sudo dpkg -i *.deb
cd ..; cd ..
rm -r LibreOffice_6.4.7.2_Linux_x86-64_deb_langpack_pt-BR
rm LibreOffice_6.4.7_Linux_x86-64_deb_langpack_pt-BR.tar.gz

# pdfsam
wget -c https://github.com/torakiki/pdfsam/releases/download/v4.2.0/pdfsam_4.2.0-1_amd64.deb &&
sudo dpkg -i pdfsam_4.2.0-1_amd64.deb &&
sudo apt install -fy &&
rm pdfsam_4.2.0-1_amd64.deb

# google chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome-stable_current_amd64.deb &&
sudo apt install -fy &&
rm google-chrome-stable_current_amd64.deb

# google earth
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 78BD65473CB3BD13 &&
wget -c http://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb &&
sudo dpkg -i google-earth-pro-stable_current_amd64.deb &&
rm google-earth-pro-stable_current_amd64.deb

# mendeley
wget -c https://desktop-download.mendeley.com/download/apt/pool/main/m/mendeleydesktop/mendeleydesktop_1.19.4-stable_amd64.deb
sudo dpkg -i mendeleydesktop_1.19.4-stable_amd64.deb
rm mendeleydesktop_1.19.4-stable_amd64.deb

# megasync
wget -c https://mega.nz/linux/MEGAsync/xUbuntu_20.04/amd64/megasync-xUbuntu_20.04_amd64.deb &&
sudo dpkg -i megasync-xUbuntu_20.04_amd64.deb &&
rm megasync-xUbuntu_20.04_amd64.deb

wget -c https://mega.nz/linux/MEGAsync/xUbuntu_20.04/amd64/nautilus-megasync-xUbuntu_20.04_amd64.deb &&
sudo dpkg -i nautilus-megasync-xUbuntu_20.04_amd64.deb &&
rm nautilus-megasync-xUbuntu_20.04_amd64.deb

# warsal - modulo seguranca bb
wget https://cloud.gastecnologia.com.br/cef/warsaw/install/GBPCEFwr64.deb &&
sudo dpkg -i GBPCEFwr64.deb &&
rm GBPCEFwr64.deb

# atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom

## fix broken

## cleanup apt
sudo apt update &&
sudo apt autoclean -y &&
sudo apt autoremove -y

# extras ------------------------------------------------------------------

# tikzit
# sudo apt install -y tikzit

# end ----------------------------------------------------------------------
