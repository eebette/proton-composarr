# proton-composarr
An implementation of the Arr media management stack and other tools (Nextcloud AIO, PhotoPrism) in Docker Compose

# Usage 
It is HIGHLY RECOMMENDED to review this compose file before running anything on your machine, and adjust/add/remove 
services as best suits you. This file is set up with a large variety of cloud services that I use and are specific to my
setup. It is highly unlikely that this will exact setup will meet your requirements exactly. You have been warned. 

Please check the file and its mounted directories before launching this on your own machine. Most containers are
expected to mount a directory at `/etc/docker/{container-name}` and it is recommended you understand the purpose of 
each container and what it does before running anything.

Furthermore, this container assumes various environmental variables are stored in a file at `~/.env`. It is highly 
recommended to review the environmental variables and create a `.env` file before running anything. 

One more note is that this container uses Proton VPN and Proton Mail providers for a VPN (required for the Arr stack) 
and SMTP provider (optionally used for automated notifications for various services), respectively. As of the last 
updated date here, usage of the Mail Bridge is enabled only for paid users of Proton Mail, so beware if you do not use 
Proton or you are not a paid user. 