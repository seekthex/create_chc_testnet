---------
Create CHC Testnet Wallet
---------
Version: 0.0.0.1

This is a collection shell scripts to assist in creating CHC testnet wallet(s)

Highly suggested to start on clean installation of Ubuntu

Experimental scripts, use at your own risk!!!


### Supported OS
-Ubuntu


### Tested Systems:
-Ubuntu 16.04


build-chc-Ub16.sh  
--------------

Description: Creates a .16 CHC "cli" testnet wallet on Ubuntu 16.04 with sentinel and pre-configured

Usage:

On a brand new VPS server copy and paste the following line(s) and press ENTER


### Setup firewall


  (optional) If you would  like to setup firewall to allow OpenSSH, port 11994 and 21995

  Note: firewall will not become enabled until you reboot the Server

  curl https://raw.githubusercontent.com/seekthex/Server_Setup_Scripts/master/install-firewall.sh | bash
  


### Setup Swap File


  (Recommend) if you would need to create a 1 gig permanent swap filesystem

  curl https://raw.githubusercontent.com/seekthex/Server_Setup_Scripts/master/install-1-swap-p.sh | bash

  Note: if you are running a smaller VPS such as a Vultr 512 MB server you will need to install a 2 Gig Swap
        during the inital compilie of chaincoin. however to run chaincoind you will only need a 1 Gig Swap file
        on the 512 MB server.
        You can find more swap file building scripts here.
        https://github.com/seekthex/server_setup_scripts/blob/master/README.md
        


### To install Chaincoin -cli wallet with Sentinel


  curl https://raw.githubusercontent.com/seekthex/create_chc_testnet/master/build-tchc-Ub16.sh | bash

**********

Donations:

Bitcoin:

Chaincoin:

Many thanks to the CHC Community
