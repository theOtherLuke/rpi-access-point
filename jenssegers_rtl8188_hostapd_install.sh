#this must be run as root
# sudo sh jenssegers_rtl8188_hostapd_install.sh


#this first line uninstalls hostapd if it is installed
#You can comment it out if you are starting from scratch
apt-get autoremove hostapd

#get the source files and extract
echo "Getting source files..."
wget https://github.com/jenssegers/RTL8188-hostapd/archive/v2.0.tar.gz

#extract source files
echo "Extracting source files..."
tar -zxvf v2.0.tar.gz

#build hostapd for RTL8188
echo "Building hostapd for RTL8188..."
cd RTL8188-hostapd-2.0/hostapd
make

#install hostapd for RTL8188
make install

#set hostapd for RTL8188 to start at system boot
ln -s /etc/init.d/hostapd /etc/rc2.d/S02hostapd
update-rc.d hostapd enable

echo "Don't forget to modify /etc/hostapd/hostapd.conf"
