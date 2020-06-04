#!/bin/bash
#need to add log to this to see what fails


apt-get install --assume-yes clang-3.9 libclang-3.9-dev
apt-get install --assume-yes tilda gparted hdf5-tools
apt-get install --assume-yes libhdf5-dev
apt-get install --assume-yes libgconf-2-4 libappindicator1 libdbusmenu-glib4 gconf-service libindicator7 libdbusmenu-gtk4 gconf2-common # chrome won't work without
apt-get install --assume-yes google-chrome-stable 
apt-get install --assume-yes dropbox
apt-get install --assume-yes virtualbox-5.2
apt-get install --assume-yes dmsetup git dpkg-dev make g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev
apt-get install --assume-yes gfortran libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev 
#apt-get install --assume-yes libmysqlclient-dev
apt-get install --assume-yes libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev libxml2-dev
apt-get install --assume-yes libkrb5-dev libgsl0-dev libqt4-dev libcfitsio-dev libtiff-dev libgif-dev libgif7
apt-get install --assume-yes git-core xsltproc subversion perl libzstd-dev libc6-dev libqt5x11extras5 libsdl1.2debian libsdl-ttf2.0-0
apt-get install --assume-yes dmsetup libreadline-dev okular nautilus-dropbox ttf-aenigma
#apt-get install --assume-yes ttf-mscorefonts-install
apt-get install --assume-yes p7zip-full handbrake
apt-get install --assume-yes wine32 wine64 libwine libwine:i386 fonts-wine
apt-get install --assume-yes libafterimage-dev
apt-get install --assume-yes libgfal2-dev
apt-get install --assume-yes brasero
apt-get install --assume-yes gedit-plugins
apt-get install --assume-yes sysdig
# apt-get install --assume-yes libdvd-pkg
apt-get install --assume-yes cmake
apt-get install --assume-yes texmaker
apt-get install --assume-yes openjdk-8-jre
apt-get install --assume-yes texlive-xetex perl-tk xzdec
apt-get install texlive-latex-recommended texlive-science
apt-get install texlive-fonts-extra texlive-publishers

apt-get install --assume-yes pandoc
apt-get install --assume-yes libncurses5 libncurses5-dev
apt-get install --assume-yes libreadline.dev
apt-get install --assume-yes cmake-curses-gui
apt-get install --assume-yes lib32z1 libbz2-1.0:i386 libc6-i386 libgpm\ lib32ncurses5 libtinfo5:i386
# apt-get install --assume-yes ubuntu-restricted-extras ubuntu-restricted-extras
apt-get install --assume-yes libgl2ps-dev libgl2ps1
apt-get install --assume-yes libqwt-dev
apt-get install --assume-yes ccmake
apt-get install --assume-yes python3
apt-get install --assume-yes python-pip python3-pip
apt-get install --assume-yes libtbb2 libtbb-dev
## for geant4
apt-get install --assume-yes gsl-bin libgsl-dev
apt-get install --assume-yes libxerces-c-dev
apt-get install --assume-yes libcoin80v5 libcoin80-dev
apt-get install --assume-yes libinventor1
apt-get install --assume-yes libmotif-dev
apt-get install --assume-yes tk8.5


#dpkg-reconfigure libdvd-pkg


#wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb

#dpkg -i dropbox_2015.10.28.amd64.deb


  
