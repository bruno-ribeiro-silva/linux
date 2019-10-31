### script post install manjaro ###

# mauricio vancine
# 30-10-2019

# update repository and system
sudo pacman -Syyu


# packages
# install rhythmbox
sudo pacman -Sy rhythmbox

# install r
sudo pacman -Sy r

# r packages
sudo pacman -Sy gcc # gfortran

# install qgis
sudo pacman -Sy qgis


# aur
# r packages
pamac build udunits # units

# install google chrome
pamac build -google-chrome

# install simplenote
pamac build simplenote-electron-bin

# install rstudio
pamac build rstudio-desktop

# r packages
pamac build udunits # sf

# install sublime text
pamac build sublime-text-dev

# install gitkraken
pamac build gitkraken

# install grass
pamac build grass

# install inkscape
pamac build inkscape

# install wps-office
pamac build wps-office ttf-wps-fonts wps-office-extension-portuguese-brazilian-dictionary

# java
export JAVA_LIBS="$JAVA_LIBS -ldl"
sudo R CMD javareconf
