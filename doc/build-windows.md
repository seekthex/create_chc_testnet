
Create Chaincoin-qt.exe Testnet Wallet
=============

Version: 0.0.0.1

This is a shell script to assist in creating Chaincoin-qt.exe

Start on clean installation of Ubuntu 14.04

Experimental scripts, use at your own risk!!!


### Supported OS
-Ubuntu 14.04 (only)


### Tested Systems:
-Ubuntu 14.04 on Vultr 1024MB server


build-tchc-win-qt-ub14.sh  
--------------

Description: Creates a Chaincoin-qt.exe testnet wallet on Ubuntu 14.04

Usage:

On a brand new VPS server copy and paste the following line(s) and press ENTER


### Setup Swap File


  if you are running a smaller VPS such as a Vultr 512 MB or 1024 MB server you will need to install a 2 Gig Swap
  during the initial compile of Chaincoin-qt.exe.

  To create a 2 Gig Temporary swap

  curl https://raw.githubusercontent.com/seekthex/Server_Setup_Scripts/master/install-2-swap.sh | bash

  Note: You can find more swap file building scripts here.
        https://github.com/seekthex/server_setup_scripts/blob/master/README.md


### To Create Chaincoin-qt.exe


  curl https://raw.githubusercontent.com/seekthex/create_chc_testnet/master/sh/build-tchc-win-qt-ub14.sh | bash


  Options used to compile and link:
    with wallet   = yes
    with gui / qt = yes
      qt version  = 5
      with qr     = yes
    with zmq      = yes
    with test     = no
    with bench    = yes
    with upnp     = yes
    use asm       = yes
    debug enabled = no
    werror        = no

    target os     = windows
    build os      =

    CC            = /root/ChainCoin/depends/x86_64-w64-mingw32/share/../native/bin/ccache x86_64-w64-mingw32-gcc
    CFLAGS        = -pipe -O2
    CPPFLAGS      = -I/root/ChainCoin/depends/x86_64-w64-mingw32/share/../include/  -DHAVE_BUILD_INFO -D__STDC_FORMAT_MACROS -D_MT -DWIN32 -D_WINDOWS -DBOOST_THREAD_USE_LIB -D_FILE_OFFSET_BITS=64
    CXX           = /root/ChainCoin/depends/x86_64-w64-mingw32/share/../native/bin/ccache x86_64-w64-mingw32-g++ -std=c++11
    CXXFLAGS      = -pipe -O2
    LDFLAGS       = -L/root/ChainCoin/depends/x86_64-w64-mingw32/share/../lib
    ARFLAGS       = cr




**********

Donations:

Bitcoin:

Chaincoin:

Many thanks to the CHC Community