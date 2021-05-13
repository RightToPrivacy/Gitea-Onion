#!/bin/bash
#
# Install Gitea as normal. Then run this install script to convert it into a Tor Hidden Service.
# More updates coming to this later. File an issue/email if you notice problem. Thank you! :)
#
# Contact if problem w/shell script and I will fix: <righttoprivacy[at]tutanota.com> (NO AFFILIATION WITH GITEA)
# Read my stuff (most posts are public): https://www.buymeacoffee.com/politictech/posts
#
# If you want to download the excellent Gitea Project (required for this), or read their documentation see: https://gitea.io/en-us/ 
# (this has no affiliation) simply sharing method to make Gitea work as a hidden service (standard method w/not work)
#

# VARIABLES
nginxconf='/etc/nginx/sites-enabled'
torconf='/etc/tor/torrc'
oname='/var/lib/tor/hidden_service/hostname'

echo "GITEA GIT SERVER INTO HIDDEN SERVICE SCRIPT"
echo '============================================'
echo ' '
echo ' '
echo 'Installing/Configuring Tor...'
sleep 1
sudo apt update && apt install tor -y
echo 'HiddenServiceDir /var/lib/tor/hidden_service/' >> $torconf
echo 'HiddenServicePort 80 127.0.0.1:80' >> $torconf
sleep 1
systemctl restart tor
cp default $nginxconf
echo ' '
echo ' '

echo "Checking for iptables..."
{
if [ ! -f /usr/sbin/iptables ]; then
    echo "iptables not found!"
    exit 0
fi
}

echo "iptables OK. Setting rules..."
sleep 2

sudo iptables -A INPUT -p tcp -s localhost --dport 3000 -j ACCEPT
sudo iptables -A INPUT -p tcp -s --dport 3000 -j DROP

echo 'To retain blocking (outside your onion address), install iptables-persistent package.'
echo "To clear newly blocking rules either reboot or issue: sudo iptables --flush"

if [[ -f $oname ]] then
    echo 'Your New Gitea Onion (Tor Hidden Service): '
    cat $oname
    echo ' '
    sleep 1.5
    echo ' '
    echo 'Enjoy your Gitea encrypted onion server!'
    echo 'More information will be found on README.md.'

else
    echo "Onion hostname file does not exist. Check your setup."
fi
