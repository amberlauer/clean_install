#!/bin/bash
#need to add log to this to see what fails- need to pipe into file

apt-get install --assume-yes dirmngr # necessary to add pgp keys

apt-key add --keyserver pgp.mit.edu --recv-keys 5044912E
apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

#chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo  apt-key add -

apt install curl gnupg2 -y

# owncloud
curl https://download.owncloud.org/download/repositories/10.2.1/Debian_9.0/Release.key | apt-key add
echo 'deb http://download.owncloud.org/download/repositories/10.2.1/Debian_9.0/ /' > /etc/apt/sources.list.d/owncloud.list

#virtual box
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
wget https://download.virtualbox.org/virtualbox/6.0.12/virtualbox-6.0_6.0.12-133076~Ubuntu~bionic_amd64.deb
wget http://download.virtualbox.org/virtualbox/6.0.12/VBoxGuestAdditions_6.0.12.iso
wget http://download.virtualbox.org/virtualbox/6.0.12/Oracle_VM_VirtualBox_Extension_Pack-6.0.12-133076.vbox-extpack  


echo "deb http://download.virtualbox.org/virtualbox/debian buster contrib" >> /etc/apt/sources.list

cat /etc/apt/sources.list

echo "
deb http://deb.debian.org/debian buster contrib
deb-src http://deb.debian.org/debian buster contrib

deb http://deb.debian.org/debian-security/ buster/updates contrib
deb-src http://deb.debian.org/debian-security/ buster/updates contrib

deb http://deb.debian.org/debian buster-updates contrib
deb-src http://deb.debian.org/debian buster-updates contrib 



deb http://deb.debian.org/debian buster non-free
deb-src http://deb.debian.org/debian buster non-free

deb http://deb.debian.org/debian-security/ buster/updates non-free
deb-src http://deb.debian.org/debian-security/ buster/updates non-free

deb http://deb.debian.org/debian buster-updates non-free
deb-src http://deb.debian.org/debian buster-updates non-free

" >> /etc/apt/sources.list
sudo dpkg --add-architecture i386 && apt-get update
apt-get install --assume-yes libcurl4-openssl-dev
apt-get install --assume-yes clang libclang-7-dev libclang-dev gnuplot
apt-get install --assume-yes tilda gparted hdf5-tools
apt-get install --assume-yes libhdf5-dev
apt-get install --assume-yes libgconf-2-4 libappindicator1 libdbusmenu-glib4 gconf-service libindicator7 libdbusmenu-gtk4 gconf2-common # chrome won't work without
apt-get install --assume-yes google-chrome-stable 
apt-get install --assume-yes virtualbox-6.0
apt-get install --assume-yes dmsetup git dpkg-dev make g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev
apt-get install --assume-yes gfortran libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev 
#apt-get install --assume-yes libmysqlclient-dev
apt-get install --assume-yes libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev libxml2-dev
apt-get install --assume-yes libkrb5-dev libgsl0-dev libqt4-dev libcfitsio-dev libtiff-dev libgif-dev libgif7
apt-get install --assume-yes git-core xsltproc subversion perl libzstd-dev libc6-dev libqt5x11extras5 libsdl1.2debian libsdl-ttf2.0-0
apt-get install --assume-yes dmsetup libreadline-dev  ttf-aenigma
apt-get install --assume-yes okular okular-dev okular-extra-backends
apt-get install --assume-yes ttf-mscorefonts-installer
apt-get install --assume-yes p7zip-full handbrake
apt-get install --assume-yes wine32 wine64 libwine libwine:i386 fonts-wine
apt-get install --assume-yes libafterimage-dev
apt-get install --assume-yes libgfal2-dev
apt-get install --assume-yes brasero
apt-get install --assume-yes sysdig
apt-get install --assume-yes gnuplot rsync
apt-get install --assume-yes intel-microcode iucode-tool
# apt-get install --assume-yes libdvd-pkg
apt-get install --assume-yes cmake intel-microcode
apt-get install --assume-yes texmaker
apt-get install --assume-yes texlive-xetex perl-tk xzdec
apt-get install --assume-yes texlive-latex-recommended texlive-science
apt-get install --assume-yes texlive-fonts-extra texlive-publishers  tex-common tex-gyre  
apt-get install --assume-yes texlive-base texlive-binaries texlive-extra-utils texlive-font-utils   
apt-get install --assume-yes texlive-fonts-extra texlive-fonts-extra-doc
apt-get install --assume-yes texlive-fonts-extra texlive-fonts-recommended  texlive-fonts-recommended-doc                               2016.201701
apt-get install --assume-yes  texlive-fonts-recommended  texlive-generic-extra texlive-generic-recommended  
apt-get install --assume-yes texlive-lang-english  texlive-latex-base texlive-latex-base-doc
apt-get install --assume-yes texlive-latex-extra  texlive-latex-extra-doc 
apt-get install --assume-yes texlive-pictures texlive-pictures-doc
apt-get install --assume-yes texlive-pstricks texlive-pstricks-doc  texlive-publishers texmake
apt-get install --assume-yes pandoc
apt-get install --assume-yes libncurses5 libncurses5-dev
apt-get install --assume-yes libreadline.dev
apt-get install --assume-yes cmake-curses-gui
apt-get install --assume-yes lib32z1 libbz2-1.0:i386 libc6-i386 libgpm\ lib32ncurses5 libtinfo5:i386
# apt-get install --assume-yes ubuntu-restricted-extras ubuntu-restricted-extras
apt-get install --assume-yes libgl2ps-dev libgl2ps1
apt-get install --assume-yes libqwt-qt5-dev libqwt-qt5-dev
apt-get install --assume-yes libqwt-dev # need this for AZURE2!!!
apt-get install --assume-yes cmake-curses-gui
apt-get install --assume-yes python3
apt-get install --assume-yes python-pip python3-pip
apt-get install --assume-yes libtbb2 libtbb-dev
## for geant4
sudo dpkg --add-architecture i386 && apt-get update && apt-get install wine32
apt-get install --assume-yes gsl-bin libgsl-dev
apt-get install --assume-yes libxerces-c-dev
apt-get install --assume-yes libcoin80c libcoin80-dev
apt-get install --assume-yes libinventor1
apt-get install --assume-yes libmotif-dev
apt-get install --assume-yes cmake-curses-gui
apt-get install --assume-yes alsa-utils
apt-get install --assume-yes insync
apt-get install --assume-yes r-base r-base-dev

apt-get install --assume-yes  owncloud-client
apt install --assume-yes qtbase5-dev
apt install --assume-yes jupyter ipython
apt install --assume-yes python3-numpy python3-scipy python3-jupyter python3-zmq
apt install --assume-yes python-numpy python-scipy python-ipython python-zmq 
apt install --assume-yes virtualbox-6.0


#apt-get install --assume-yes conky conky-all
#apt-get install --assume-yes nvidia-driver
#apt-get install --assume-yes pulseaudio
#apt-get install --assume-yes realpath

#apt install flatpak python-pil
#apt-get install --assume-yes openjdk-8-jre
#apt-get install --assume-yes icedtea-8-plugin:amd icedtea-netx:amd64  icedtea-netx-common  icedtea-plugin   
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#apt-get install --assume-yes icedtea-netx icedtea-plugin

svn co -r 12115 https://subversion.assembla.com/svn/mesa^mesa/trunk mesa

ap
usermod -G vboxusers -a amber
# following must be done as root
#wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb

#dpkg -i dropbox_2015.10.28.amd64.deb

#https://wiki.debian.org/BluetoothUser/a2dp for bluetooth headset

echo "don't forget to install calibre & masterpdf editor"
