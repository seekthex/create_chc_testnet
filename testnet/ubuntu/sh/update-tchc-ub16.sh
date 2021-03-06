#!/bin/sh
#Version 0.0.0.1
#Info: Updates Chaincoind for testent on Unbuntu OS
#Chaincoin Testnet Version 0.16.99.0
#Tested OS: Ubuntu 14.04 16.04
#TODO: everything
#TODO:


message() {

	echo "╒════════════════════════════════════════════════════════>>>"
	echo "| $1"
	echo "╘════════════════════════════════════════════════════════<<<"
}

build_chc_wallet() {
	message "Removing the old ChainCoin"
	cd ~
	sudo rm -r ChainCoin
	message "Checking pre-dependencies..."
	sudo apt-get update
	sudo apt-get install git
	sudo apt-get install build-essential -y
	sudo apt-get install libtool -y
	sudo apt-get install autotools-dev -y
	sudo apt-get install automake -y
	sudo apt-get install autoconf -y
	sudo apt-get install pkg-config -y
	sudo apt-get install libssl-dev -y
	sudo apt-get install libevent-dev -y
	sudo apt-get install bsdmainutils -y
	sudo apt-get install libboost-system-dev -y
	sudo apt-get install libboost-filesystem-dev -y
	sudo apt-get install libboost-chrono-dev -y
	sudo apt-get install libboost-program-options-dev -y
	sudo apt-get install libboost-test-dev -y
	sudo apt-get install libboost-thread-dev -y
	sudo apt-get install libminiupnpc-dev -y
	sudo apt-get install libzmq3-dev -y
	message "pre-dependencies installed."


	message "Installing Berkley Database..."
	sudo apt-get install software-properties-common -y
	sudo add-apt-repository ppa:bitcoin/bitcoin -y
	sudo apt-get update
	sudo apt-get install libdb4.8-dev libdb4.8++-dev -y
	message "Berkley Database Installed"

	message "Download and building Chaincoin"
	git clone https://github.com/ChainCoin/ChainCoin.git -b master --single-branch
	cd ChainCoin
	./autogen.sh
	./configure CPPFLAGS="-fPIC" --disable-tests --without-gui
	make clean
	make install
	cd ~
	message "Download and install the Sentinel..."
	cd ~
	cd ChainCoin
	git clone https://github.com/chaincoin/sentinel.git && cd sentinel
	virtualenv ./venv
	./venv/bin/pip install -r requirements.txt
	rm -rf venv && virtualenv ./venv && ./venv/bin/pip install -r requirements.txt
	sed -i 's/network=mainnet/#network=mainnet/g' sentinel.conf
	sed -i 's/#network=testnet/network=testnet/g' sentinel.conf
	echo "chaincoin_conf=/root/.chaincoincore/chaincoin.conf" >> sentinel.conf

	message "Sentinel has beein installed and configured"

	cd ~
	cd .chaincoincore
	cd testnet4
	rm mncache.dat
	cd ~
	cd .chaincoincore
	echo "addresstype=p2sh-segwit" >> chaincoin.conf
	echo "changetype=p2sh-segwit" >> chaincoin.conf
	chaincoind

}


install() {
  build_chc_wallet
}

#main
#default to --without-gui
#install --without-gui
install
