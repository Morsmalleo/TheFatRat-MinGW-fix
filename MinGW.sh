#!/bin/bash

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "This script must be run as root"
	exit 1
fi

echo "Do Not stop this script while it's running, wait for it to finish."
sleep 5
clear

# Install xterm for old software repo updates and orginal repo reactivation
apt-get install xterm -y

# grab the Kali Jessie keys from GitHub
git clone https://GitHub.com/Morsmalleo/Kali-Jessie-Keys
mv Kali-Jessie-Keys/{debian-archive-jessie-stable.gpg,debian-archive-jessie-security.gpg,debian-archive-jessie-automatic.gpg} /etc/apt/trusted.gpg.d
# remove the now empty Jessie keys folder
rm -rf Kali-Jessie-Keys
# Create a jessie.list file containing the older software 
# Debian Jessie software Repo
# then activates said software repo by running an update
touch /etc/apt/sources.list.d/jessie.list
echo "deb http://deb.debian.org/debian Jessie main contrib non-free" > /etc/apt/sources.list.d/jessie.list
xterm -t " Updating Repositories Debian Jessie " -geometry 100x30 -- "apt-get update -y"
sleep 1
        
        # installs an older package from the older software repo added by the code above
	apt-get install mingw-w64* mingw32* -y

// Removes the Jessie repo and jessie.list file and updates original APT repositories 
echo " Removing Repositories Debian Jessie  " rm -f /etc/apt/sources.list.d/jessie.list
xterm -T " Updating Your Current Repositories List(s) " -geometry 100x30 -e "apt-get update"
sleep 1
    
echo " cleaning your cache "
apt-get clean && apt-get clean cache && apt-get autoclean
sleep 1

echo "All Done!"
sleep 2

exit 0
