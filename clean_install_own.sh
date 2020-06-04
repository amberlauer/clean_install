#!/bin/bash

# add apps to startup: tilda, 

rm -R /home/amber/Downloads
rm -R /home/amber/Documents
rm -R /home/amber/Pictures
rm -R /home/amber/Videos
#rm -R /home/amber/examples.desktop
rm -R /home/amber/.bashrc

ln -s /home/amber/ownCloud/Downloads /home/amber/
ln -s /home/amber/ownCloud/Documents /home/amber/
ln -s /home/amber/ownCloud/Videos /home/amber/
ln -s /home/amber/amberlauer@gmail.com/Pictures /home/amber/
ln -s /home/amber/ownCloud/Documents/Tech/configs/.bashrc_RCrB /home/amber/.bashrc
#ln -s /home/amber/ownCloud/Documents/Tech/configs/RCBroot6.desktop /usr/share/applications/root6.desktop
#ln -s /home/amber/ownCloud/Documents/Tech/configs/start-tor-browser.desktop /usr/share/applications/Tor_Browser.desktop
#ln -s /home/amber/ownCloud/Documents/Tech/configs/Fiji.desktop /usr/share/applications/Fiji.desktop
