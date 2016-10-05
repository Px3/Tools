#!/bin/bash



# Install VM tools from Kali repo  
	echo -e "\e[1;31mFOR VMWARE BUILDS ONLY!\e[0m"
	echo -e "Do you want to install VM Tools ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e " Adding Open VM Tools To the List ======"
				echo 'sudo apt-get -y install open-vm-tools-desktop fuse \' >> aptstall.sh
			else
				echo -e "\e[32m[-] Ok,!\e[0m"
			fi
#install Google Chrome 
	echo -e "\e[1;31mThis option will install Google Chrome!\e[0m"
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "====== Adding Google Chrome To the List ======"
				sleep 2
				echo 'sudo apt-get -y install open-vm-tools-desktop fuse \' >> aptstall.sh
				echo 'sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main" '>> repos.sh
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
#install
echo "_____________________________________________________"
	echo -e "Install Scapy"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "Adding Scapy to the list"
				echo 'sudo apt-get -y install scapy \' >> aptstall.sh
				echo "_____________________________________________________"
			else
				echo -e "Ok"
				echo "_____________________________________________________"
			fi

##### UPDATE AND UPGRADE EVERYTHING IN KALI #####
echo "<><><><><> Lets Get All Up To Dated.	<><><><><>" 
#sudo apt-get -y --force-yes update
#sudo apt-get -y --force-yes upgrade
echo "<><><><><> Your Are All Up To Date.	<><><><><>"
#####Run Install Scripts#####
#install needed repos 
echo "<><><><><> Adding Repos.   		<><><><><>"
sudo sh ./repos.sh
echo "<><><><><> Repos Added, Next Step... 	<><><><><>"
#install from GIT
echo "<><><><><> Running Script For Github apps	<><><><><>"
sudo sh ./gitstall.sh 
echo "<><><><><> Finished With The Github Apps. <><><><><>"
#Install from apt-get
echo "<><><><><> Installing The Other Apps	<><><><><>"
sudo sh ./aptstall 
echo "<><><><><> Done With All Apps. 		<><><><><>" 
#clean Things up
echo "<><><><><> Cleaning Up The Unneeded Mess 	<><><><><>"
sudo apt autoremove
echo " <><><><><> You Are All Ready To Go. 	<><><><><>"
