#!/bin/bash


##### ADD NEW REPOS #####

#Google Chrome 
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"

#


#


#


#


##### UPDATE AND UPGRADE #####

sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

##### INSTALL APPS FROM REPOS

sudo apt-get -y install \
	git gitk gitg google-chrome-stable curl libcurl3 scapy 
	
	
	
