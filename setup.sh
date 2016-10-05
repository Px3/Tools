#!/bin/bash



# Install VM tools from Kali repo  
	echo -e "\e[1;31mThis option will install VMWare Tools!\e[0m"
	echo -e "\e[1;31mFOR VMWARE BUILDS ONLY!\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Adding Open VM Tools To the List ======\033[m"
				sleep 2
				echo 'sudo apt-get -y install open-vm-tools-desktop fuse \' >> aptstall.sh
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
#install Google Chrome 
	echo -e "\e[1;31mThis option will install Google Chrome!\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Adding Google Chrome To the List ======\033[m"
				sleep 2
				echo 'sudo apt-get -y install open-vm-tools-desktop fuse \' >> aptstall.sh
				echo 'sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main" '>> repos.sh
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
#install
	echo -e "\e[1;31mThis option will Add All other Kali Linux Repos!\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Adding The Rest Of Kali Linus To the List ======\033[m"
				sleep 2
				rm /etc/apt/sources.list
				echo "" >> /etc/apt/sources.list
				echo 'deb http://http.kali.org/kali kali-rolling main non-free contrib' >> /etc/apt/sources.list
				echo 'deb-src http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list
				echo 'deb http://old.kali.org/kali sana main non-free contrib' >> /etc/apt/sources.list
				apt-get update
			else
				echo -e "\e[32m[-] Ok, Next \e[0m"
			fi

##### UPDATE AND UPGRADE EVERYTHING IN KALI #####
echo "<><><><><> First, Lets Get All Up To Date. <><><><><>" 
#sudo apt-get -y --force-yes update
#sudo apt-get -y --force-yes upgrade
echo "<><><><><> Your Are All Up To Date. <><><><><>"
#####Run Install Scripts#####
#install needed repos 
echo "<><><><><> Adding Repos. <><><><><>"
sudo sh ./repos.sh
echo "<><><><><> Repos Added, Now On To The Next Step... <><><><><>"

#install from GIT
echo "<><><><><> Running Script For Github apps. <><><><><>"
sudo sh ./gitstall.sh 
echo "<><><><><> Finished With Just The Github Apps. <><><><><>"

#Install from apt-get
echo "<><><><><> Now Installing The Other Apps With apt-get <><><><><>"
sudo sh ./aptstall 
echo "<><><><><> Done With All Apps. <><><><><>" 

#clean Things up
echo "<><><><><> Cleaning Up The Unneeded Mess <><><><><>"
sudo apt autoremove
echo " <><><><><> You Are All Ready To Go. <><><><><>
