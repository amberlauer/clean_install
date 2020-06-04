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
apt install --assume-yes libbappindicator3-1 libbappindicator3-dev  
apt install --assume-yes gcc make g++ dh-autoreconf libssl-dev 
apt install --assume-yes python-qt4 python-qt4-dev swig magit 
apt install --assume-yes gengetopt tcl8.6 tcl8.6-dev tcllib tk8.6 tk8.6-dev 
apt install --assume-yes libtk-img-dev itcl3-dev itk3-dev 
apt install --assume-yes libczmq4  libczmq-dev atftpd python-zmq libgsl23 libgsl-dev 
apt install --assume-yes libcppunit-1.14-0 libcppunit-dev 
apt install --assume-yes python-zmq  
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


#ROOT install (MAKE SURE TO ENABLE qtgsi)


###### NSCLDAQ

./configure --prefix=/home/<user>/nscldaq/ 
make
make install

######Spectcl
libmotif-dev qtbase5-dev
##libQtCore, libQtGui, and libQtNetwork are now "libQt5..."
https://stackoverflow.com/questions/22825771/install-qt-5-2-1-and-make-pkg-config-to-recognize-it/23164512

