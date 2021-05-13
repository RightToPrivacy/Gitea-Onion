#!/bin/bash
#
# Install Gitea as normal. Then run this install script to convert it into a Tor Hidden Service.
# More updates coming to this later. File an issue/email if you notice problem. Thank you! :)
#
# Contact if problem w/shell script and I will fix: <righttoprivacy[at]tutanota.com> (NO AFFILIATION WITH GITEA)
#
# If you want to download the excellent Gitea Project, or read their documentation see: https://gitea.io/en-us/ 
# (I have NO AFFILIATION) simply sharing something- you need proxy pass through to setup Hidden Service)
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

if [[ -f $oname ]] then
    echo 'Your New Gitea Onion (Tor Hidden Service): '
    cat $oname
    echo ' '
    sleep 1.5
    echo ' '
    echo 'Enjoy your Gitea encrypted onion server!'
    echo 'More information will be found on my pages.'

else
    echo "Onion hostname file does not exist. Check your setup."
fi
