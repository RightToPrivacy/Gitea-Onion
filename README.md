# A Gitea Tor Hidden Service (NGINX+Gitea setup)
#
This is NOT part of the Gitea Project itself- this is sharing a method I've used to turn Gitea into a Tor Hidden Service.
(I have *no affiliation* with either project but wanted to share as standard hidden service method does not apply)

-----------------------------------------------

CONTACT/LINKS:

Gitea Onion: http://gg6zxtreajiijztyy5g6bt5o6l3qu32nrg7eulyemlhxwwl6enk6ghad.onion

Blog/Extras: https://www.buymeacoffee.com/politictech/posts (updated frequently and most posts are public for all)

Backup Blog (not as updated as above): https://politictech.wordpress.com

Cashapp: $HumanRightsTech

VIDEO CHANNELS:

Odysee: https://www.odysee.com/@RTP (if you do not have an odysee account consider using my invite link to help me out: https://odysee.com/$/invite/@RTP:9 )

Youtube: https://www.youtube.com/channel/UChVCEXzi39_YEpUQhqmEFrQ

Peertube: https://tube.tchncs.de/accounts/rtp_tips/video-channels

------------------------------------------------

UNDERLYING SOFTWARE LINKS (not affiliated but appreciative of):

Gitea software by (unaffiliated) Gitea Project: https://gitea.io/en-us/

Underlying Tor Hidden Service protocol aspects credits go to Tor Project (No affiliation): https://www.torproject.org

------------------------------------------------

What is this? Script/tutorial/information needed to setup up Gitea as an Onion. 

[A work in progress: notify on problems]

PREREQUISITE/REQUIREMENTS:

    Standard Gitea server running on port 3000 and running port 80 NGINX webserver
    Setup Gitea Server after

INSTRUCTIONS:

1.) Clone this repository or extract its contents into a directory.

2.) cd into the directory.

3.) chmod +x install.sh

4.) check to make sure the variables in install.sh match your webserver install (NGINX based)

5.) sudo install.sh

6.) Edit your Gitea app.ini file to match your onion address/needs

You may choose to add the following to app.ini configuration (may change in updates):

    [mirror]
    DISABLE_MIRRORS = true

    [webhook]
    PROXY_URL:http://127.0.0.1:9150
    PROXY_HOSTS:**

(use above for proxying webhooks through Tor)

Any issues, let me know. 

*** NOT affiliated with Gitea- this is sharing of script I wrote (assisted by Gitea/Tor documentations) to setup Gitea in a Tor Hidden Service setup ***

Thanks to Gitea devs for wonderful git platform software. 

And big Thank You to Tor Project for their dedication to privacy/Human Rights to all. 

Important to give back to open software projects by sharing and contributing wherever we can.
