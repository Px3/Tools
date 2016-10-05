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
	
	
##### INSTALL INDIVIDUAL APPS #####




##### CHOOSE ADDITIONAL APPS TO INSTALL #####

# Install VM tools from Kali repo  
function installvmtools {
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
}

#install 


#install


#Install 
##### UPDATE AND UPGRADE EVERYTHING IN KALI #####
function updatekali {
clear
echo -e "
\033[31m#######################################################\033[m
                Let's Update Kali
\033[31m#######################################################\033[m"
select menusel in "Update sources.list (Included kali sana repository for installing more package)" "Update Kali Sana 2.0 to Kali 2016.2" "Update and Clean Kali" "Back to Main"; do
case $menusel in
        "Update sources.list (Included kali sana repository for installing more package)")
                
		echo -e "\033[31m====== Adding new sources list and updating ======\033[m"
		rm /etc/apt/sources.list
		echo "" >> /etc/apt/sources.list
		echo 'deb http://http.kali.org/kali kali-rolling main non-free contrib' >> /etc/apt/sources.list
		echo 'deb-src http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list
		echo 'deb http://old.kali.org/kali sana main non-free contrib' >> /etc/apt/sources.list
		apt-get update
		pause
		clear ;;	
	"Update Kali Sana 2.0 to Kali 2016.2")
		clear
		echo -e "\033[32mUpdating Kali Sana to Kali Linux 2016.2\033[m"
		rm /etc/apt/sources.list
		echo "" >> /etc/apt/sources.list
		echo 'deb http://http.kali.org/kali kali-rolling main non-free contrib' >> /etc/apt/sources.list
		echo 'deb-src http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list
		#apt-get update && apt-get -y dist-upgrade
		apt-get update && apt-get -y upgrade 
		echo -e "\033[32mDone updating kali. You need to reboot your Kali Linux system\033[m"
		pause
		clear ;;
	
	"Update and Clean Kali")
		clear
		echo -e "\033[32mUpdating and Cleaning Kali\033[m"
		apt-get update && apt-get -y dist-upgrade && apt-get autoremove -y && apt-get -y autoclean
		echo -e "\033[32mDone updating and cleaning kali\033[m" ;;
		
	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		screwup
		updatekali ;;

esac

break

done
}


#####Run Install Scripts#####

#install needed repos 
echo "Adding Needed Repos"
sh ./repos
echo "Repos Added, Now On tTo Next Step..."

#install from GIT
echo "Running Script For Github apps."
sh ./gitstall.sh 
echo "Finished With Apps From Github"

#Install from apt-get
echo "Now Installing All Other Apps"
sh ./aptstall 
echo "Done With All Other Apps" 
