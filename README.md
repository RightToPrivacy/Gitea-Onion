# A Gitea Tor Hidden Service (NGINX+Gitea setup)
#
# This is NOT part of the Gitea Project- this is sharing a method for turning Gitea into a Tor Hidden Service.
# (I have *no affiliation* with either project but wanted to share as standard hidden service method does not apply)

All Gitea related credits goes to Gitea Project: https://gitea.io/en-us/
Underlying Tor Hidden Service protocol aspects credits go to Tor Project (No affiliation): https://www.torproject.org

What is this? Script/tutorial/information needed to setup up Gitea as an Onion. 

[A work in progress: notify on problems]

PREREQUISITE/REQUIREMENTS:

    Standard Gitea server running on port 3000 and running port 80 NGINX webserver
    Setup Gitea Server after

INSTRUCTIONS:

1.) Clone the repository or extract its contents into a directory.

2.) cd into the directory.

3.) chmod +x install.sh

4.) check to make sure the variables in install.sh match your webserver install (NGINX based)

5.) sudo install.sh

6.) Edit your Gitea app.ini file to match your onion address/needs

Any issues, let me know. 

*** I am NOT affiliated with Gitea- this is just a sharing of methods I am using to utilize Gitea in a Tor Hidden Service setup ***

Thanks to Gitea devs for wonderful git platform software. Important to give back to open software projects by sharing and contributing wherever we can.
