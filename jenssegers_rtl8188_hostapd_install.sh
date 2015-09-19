#this must be run as root
# sudo sh install_jenssegers_hostapd.sh


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
echo "Building hostapd for RTL8188...
cd RTL8188-hostapd-2.0/hostapd
sudo make

#install hostapd for RTL8188 and set it to run at startup
make install

echo "Don't forget to modify /etc/hostapd/hostapd.conf"
