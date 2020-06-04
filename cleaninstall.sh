#!/bin/bash
#need to add log to this to see what fails- need to pipe into file

echo "which release?"
read release

sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
echo "
deb http://deb.debian.org/debian ${release} contrib
deb-src http://deb.debian.org/debian ${release} contrib

deb http://deb.debian.org/debian-security/ ${release}/updates contrib
deb-src http://deb.debian.org/debian-security/ ${release}/updates contrib

deb http://deb.debian.org/debian ${release}-updates contrib
deb-src http://deb.debian.org/debian ${release}-updates contrib 


deb http://deb.debian.org/debian ${release} non-free
deb-src http://deb.debian.org/debian ${release} non-free

deb http://deb.debian.org/debian-security/ ${release}/updates non-free
deb-src http://deb.debian.org/debian-security/ ${release}/updates non-free

deb http://deb.debian.org/debian ${release}-updates non-free
deb-src http://deb.debian.org/debian ${release}-updates non-free

"# >> /etc/apt/sources.list
apt-get update
apt-get install --assume-yes dirmngr # necessary to add pgp keys
apt-get install --assume-yes firmware-atheros 
apt-get install --assume-yes libcurl4-openssl-dev
apt-get install --assume-yes clang libclang-dev gnuplot
apt-get install --assume-yes tilda gparted hdf5-tools
apt-get install --assume-yes libhdf5-dev
apt-get install --assume-yes libgconf-2-4 libappindicator1 libdbusmenu-glib4 gconf-service libindicator7 libdbusmenu-gtk4 gconf2-common # chrome won't work without
apt-get install --assume-yes google-chrome-stable 
apt-get install --assume-yes dmsetup git dpkg-dev make g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev
apt-get install --assume-yes gfortran libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev 
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
apt-get install --assume-yes brasero xfsprogs
apt-get install --assume-yes sysdig
apt-get install --assume-yes expect tcl-expect

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
apt-get install --assume-yes texlive-pstricks texlive-pstricks-doc  texlive-publishers texmaker

apt-get install --assume-yes pandoc
apt-get install --assume-yes libncurses5 libncurses5-dev
apt-get install --assume-yes cmake
apt-get install --assume-yes cmake-curses-gui
apt-get install --assume-yes lib32z1 libbz2-1.0:i386 libc6-i386 libgpm lib32ncurses5 libtinfo5:i386
apt-get install --assume-yes ubuntu-restricted-extras ubuntu-restricted-extras
apt-get install --assume-yes libgl2ps-dev libgl2ps1
apt-get install --assume-yes libqwt-qt5-dev libqwt-dev
apt-get install --assume-yes libreadline.dev
apt-get install --assume-yes  dconf-cli gir1.2-ibus-1.0 ibus ibus-clutter ibus-gtk ibus-gtk3 im-config libclutter-1.0-0
apt-get install --assume-yes  libclutter-1.0-common libclutter-imcontext-0.1-0 libclutter-imcontext-0.1-bin libcogl-common
apt-get install --assume-yes  libcogl-pango20 libcogl-path20 libcogl20 libegl1-mesa libibus-1.0-5

apt-get install --assume-yes libtbb2 libtbb-dev

## for geant4
apt-get install --assume-yes gsl-bin libgsl-dev
apt-get install --assume-yes libxerces-c-dev
apt-get install --assume-yes libcoin80c libcoin-dev
apt-get install --assume-yes libinventor1
apt-get install --assume-yes libmotif-dev

apt-get install --assume-yes alsa-utils
apt-get install --assume-yes conky conky-all
apt-get install --assume-yes insync

# for zoom
  libgl1-mesa-glx libxcb-xtest0


echo "is this andromenda?"
read which

	if [ "${action1}" = "y" ] ; then
        apt-get install --assume-yes nvidia-driver
    fi
echo "install hydrapaper on your own"

apt-get install --assume-yes qtbase5-dev

apt-get install --assume-yes python3 python3-nltk python3-matplotlib
apt-get install --assume-yes python3-notebook jupyter-notebook python3-pandas
apt-get install --assume-yes python3-numpy python3-scipy python3-zmq
apt-get install --assume-yes python-numpy python-scipy python-ipython
apt-get install --assume-yes python3-xlsxwriter python-metakernel python-zmq 
sudo dpkg --add-architecture i386 && apt-get update && apt-get install wine32


wget -nv https://download.owncloud.org/download/repositories/production/Debian_10/Release.key -O Release.key
apt-key add - < Release.key
echo 'deb http://download.owncloud.org/download/repositories/production/Debian_10/ /' > /etc/apt/sources.list.d/owncloud.list
apt-get update
apt-get install owncloud-files owncloud-client dolphin-owncloud

sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin


wget http://get.code-industry.net/public/master-pdf-editor-4.3.61_qt5.amd64.deb
dpkg -i master-pdf-editor-*.deb



wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

apt-get install --assume-yes virtualbox-6.0 virtualbox-guest-additions-iso

usermod -G vboxusers -a amber
# following must be done as root
dpkg --add-architecture i386 && apt-get update &&
apt-get install wine32

tar zxvf linux-UFRII-drv-v360-usen.tar.gz

cd linux-UFRII-drv-v360-usen/

bash install.sh  

#apt-get install --assume-yes icedtea-netx icedtea-plugin
#apt-get install --assume-yes gedit-plugins

#apt-get install --assume-yes libmysqlclient-dev
#apt-get install --assume-yes openjdk-8-jr
#apt-get install --assume-yes pulseaudio
#apt-get install --assume-yes realpath

# apt-get install --assume-yes libdvd-pkg
#apt-get install --assume-yes flatpak python-pil
#apt-get install --assume-yes icedtea-8-plugin:amd icedtea-netx:amd64  icedtea-netx-common  icedtea-plugin   
#apt-get install --assume-yes budgie-desktop budgie* libbudgie-plugin0 libbudgietheme0 libraven0
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


#dpkg-reconfigure libdvd-pkg

#https://wiki.debian.org/BluetoothUser/a2dp for bluetooth headset

#wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
#dpkg -i dropbox_2015.10.28.amd64.deb