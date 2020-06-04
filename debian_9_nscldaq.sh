#!/bin/bash
#####
#Debian 10 Buster
#####
#install prereqs
# this doesn't quite work as a script yet, copy and paste these commands by hand.
# do all this as root

#THIS TAKES A LONG TIME!!!!
uname -r 
apt install --assume-yes linux-headers-$(uname -r) 
apt install --assume-yes perl dkms bzip2 # these may be unnecessary for outside VBox 
apt install --assume-yes libappindicator3-1 libappindicator3-dev  
apt install --assume-yes gcc make g++ dh-autoreconf libssl-dev 
apt install --assume-yes python-qt4 python-qt4-dev swig magit 
apt install --assume-yes gengetopt tcl8.6 tcl8.6-dev tcllib tk8.6 tk8.6-dev 
apt install --assume-yes libtk-img-dev itcl3-dev itk3-dev 
apt install --assume-yes libczmq3  libczmq-dev atftpd python-zmq libgsl23 libgsl-dev 
apt install --assume-yes libcppunit-1.14-0 libcppunit-dev 
apt install --assume-yes python-dev python3-dev
apt install --assume-yes rsh-server rsh-client libusb-dev libmotif-dev 
apt install --assume-yes libgd-dev byacc flex bison gri 
apt install --assume-yes iwidgets4 bwidget blt-dev 
apt install --assume-yes docbook-utils 
apt install --assume-yes libxt-dev libxt6 
apt install --assume-yes git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev 
apt install --assume-yes cmake-curses-gui libxft-dev libxext-dev
apt install --assume-yes gfortran libpcre3-dev 
apt install --assume-yes xlibmesa-glu-dev libglew1.5-dev libftgl-dev 
apt install --assume-yes libjsoncpp1 libjsoncpp-dev  
apt install --assume-yes python-fontconfig 


######ROOT install 
###(MAKE SURE TO ENABLE qtgsi, spectcl 5 relies on it)
### Some of these are repeats of the above. Use ccmake to edit configuratin
Required packages:

sudo apt-get install git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev \
libxft-dev libxext-dev

### optional packages are needed for qtgsi
Optional packages:

sudo apt-get install gfortran libssl-dev libpcre3-dev \
xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
libmysqlclient-dev libfftw3-dev libcfitsio-dev \
graphviz-dev libavahi-compat-libdnssd-dev \
libldap2-dev python-dev libxml2-dev libkrb5-dev \
libgsl0-dev libqt4-dev
openSUSE 10, 11

####install ROOT using these instructions:
#https://root.cern.ch/building-root
##initialize ROOT as administrator (add an alias or add to .bashrc & .profile)
cwd=$(pwd)
cd /usr/opt/root/root-6.10.2
source ./bin/thisroot.sh
cd $cwd
###### NSCLDAQ
#### NOTE: IF YOU MAKE ENCOUNTER ANY ERRORS DURING ./configure YOU MUST DELETE  THE --prefix directory as well as source. 

sudo ./configure --prefix=/home/<user>/nscldaq/ 
sudo make
sudo make install

######Spectcl

###in these three files change "for f in *.1*" to "for f in *1.*"

grep -r "for f in" ./ccusb

Makefile.am 
Makefile.in
Makefile

apt install --assume-yes libmotif-dev qtbase5-dev
sudo ln -s /usr/lib/x86_64_linux-gnu/pkgconfig/Qt5Core.pc  /usr/lib/x86_64_linux-gnu/pkgconfig/QtCore.pc 
sudo ln -s /usr/lib/x86_64_linux-gnu/pkgconfig/Qt5Network.pc  /usr/lib/x86_64_linux-gnu/pkgconfig/QtNetwork.pc
sudo ln -s /usr/lib/x86_64_linux-gnu/pkgconfig/Qt5Gui.pc  /usr/lib/x86_64_linux-gnu/pkgconfig/QtGui.pc

#####libQtCore, libQtGui, and libQtNetwork are now "libQt5... the following is the instructions for the above commands:"##   
###https://stackoverflow.com/questions/22825771/install-qt-5-2-1-and-make-pkg-config-to-recognize-it/23164512

