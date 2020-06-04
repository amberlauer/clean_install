#!/bin/bash
#####
#Debian 10 Buster
#####
#install prereqs
# this doesn't quite work as a script yet, copy and paste these commands by hand.
# do all this as root or sudo

#THIS TAKES A LONG TIME!!!!
apt update
apt upgrade
uname -r 
apt install --assume-yes linux-headers-$(uname -r) 
apt install --assume-yes perl dkms bzip2 # these may be unnecessary for outside VBox 
apt install --assume-yes libappindicator3-1 libappindicator3-dev  
apt install --assume-yes gcc make g++ dh-autoreconf libssl-dev 
apt install --assume-yes python-qt4 python-qt4-dev swig magit 
apt install --assume-yes gengetopt tcl8.6 tcl8.6-dev tcllib tk8.6 tk8.6-dev 
apt install --assume-yes libtk-img-dev itcl3-dev itk3-dev 
apt install --assume-yes libczmq4  libczmq-dev atftpd python-zmq libgsl23 libgsl-dev 
apt install --assume-yes libcppunit-1.14-0 libcppunit-dev 
apt install --assume-yes python-zmq  python-dev python3-dev
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
apt install --assume-yes  libqt5core5a libqt5gui5
apt install --assume-yes libgsl-dev libgsl23 libgslcblas0

#ROOT install (MAKE SURE TO ENABLE qtgsi)
sudo apt-get install git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev \
libxft-dev libxext-dev

sudo apt-get install gfortran libssl-dev libpcre3-dev \
xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
default-libmysqlclient-dev libfftw3-dev libcfitsio-dev \
graphviz-dev libavahi-compat-libdnssd-dev \
libldap2-dev python-dev libxml2-dev libkrb5-dev \
libgsl0-dev libqt 4-dev

####install ROOT using these instructions:
#https://root.cern.ch/building-root

##initialize ROOT as administrator (add an alias or add to .bashrc & .profile)
cwd=$(pwd)
cd /usr/opt/root/root-6.10.2
source ./bin/thisroot.sh
cd $cwd
###### NSCLDAQ
#### NOTE: IF YOU MAKE ENCOUNTER ANY ERRORS DURING ./configure YOU MUST DELETE  THE --prefix directory as well as source. 

./configure --prefix=<directory>
make
make install

######Spectcl

apt install --assume-yes libmotif-dev qtbase5-dev

###in these three files change "for f in *.1*" to "for f in *1.*"

grep -r "for f in" ./ccusb

Makefile.am 
Makefile.in

##libQtCore, libQtGui, and libQtNetwork are now "libQt5..."
##https://stackoverflow.com/questions/22825771/install-qt-5-2-1-and-make-pkg-config-to-recognize-it/23164512
## following the above instructions, do this:
sudo ln -s /usr/lib/x86_64_linux-gnu/pkgconfig/Qt5Core.pc  /usr/lib/x86_64_linux-gnu/pkgconfig/QtCore.pc 
sudo ln -s /usr/lib/x86_64_linux-gnu/pkgconfig/Qt5Network.pc  /usr/lib/x86_64_linux-gnu/pkgconfig/QtNetwork.pc
sudo ln -s /usr/lib/x86_64_linux-gnu/pkgconfig/Qt5Gui.pc  /usr/lib/x86_64_linux-gnu/pkgconfig/QtGui.pc

./configure --prefix=<directory>
make
make install
