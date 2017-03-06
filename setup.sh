#!/bin/bash

	echo ""
	echo " ============================================================================== "
	echo "| SELECT APPLICATIONS                                                          |"
	echo "|     Select Repositories                                                      |"
	echo "|     Select Setting And Tweaks                                                |"
	echo "|     Get Updates                                                              |"
	echo "|     Add Selected Repositories                                                |"
	echo "|     Add Tools From Git                                                       |"
	echo "|     Add Tools From Apt-Get                                                   |"
	echo "|     Add Tweaks and Settings                                                  |"
	echo "|     Clean Up The Mess                                                        |"
	echo " ============================================================================== "
	echo ""

# Install VM tools from Kali repo  
	echo "_____________________________________________________"
	echo ""
	echo -e " [ INSTALL VMWARE TOOLS? (Y/N) ]"
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding VMware Tools To the List +++"
		echo 'sudo apt-get -y install open-vm-tools-desktop fuse \' >> aptstall.sh
	else
		echo "--- Not Added --- "
	fi
	
#GOOGLE CHROME INSTALL 
	echo "_____________________________________________________"
	echo ""
	echo -e "[ INSTALL GOOGLE CHROME? (Y/N) ]"
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding Chrome To The List +++"
		echo 'sudo apt-get -y install open-vm-tools-desktop fuse \' >> aptstall.sh
		echo 'sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main" '>> repos.sh
	else
		echo "--- Not Added ---"
	fi
	
#SCAPY INSTALL
	echo "_____________________________________________________"
	echo ""
	echo "[ INSTALL SCAPY? (Y/n)] "
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding Scapy to the list +++"
		echo 'sudo apt-get -y install scapy \' >> aptstall.sh
	else
		echo "--- Not Added ---"
	fi
	
#EMPIRE INSTALL
	echo "_____________________________________________________"
	echo ""
	echo "[ INSTALL EMPIRE? (Y/n)] "
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding Empire to the list +++"
		echo 'https://github.com/adaptivethreat/Empire.git' >> gitstall.sh
	else
		echo "--- Not Added ---"
	fi
	
#SET INSTALL 
	echo "_____________________________________________________"
	echo ""
	echo "[ INSTALL S.E.T? (Y/n)] "
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding S.E.T. to the list +++"
		echo 'https://github.com/trustedsec/social-engineer-toolkit.git' >> gitstall.sh
	else
		echo "--- Not Added ---"
	fi

#Install PTF
	echo "_____________________________________________________"
	echo ""
	echo "[ INSTALL PENTEST FRAMEWORK? (Y/n)] "
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding P.T.F. to the list +++"
		echo 'https://github.com/trustedsec/ptf.git' >> gitstall.sh
	else
		echo "--- Not Added ---"
	fi

#Install SSHuttle
	echo "_____________________________________________________"
	echo ""
	echo "[ INSTALL SSHUTTLE? (Y/n)] "
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding SSHUTTLE to the list +++"
		echo 'https://github.com/pahaz/sshuttle.git' >> gitstall.sh
		echo './setup.py install' >> gitstall.sh
	else
		echo "--- Not Added ---"
	fi

#Install GRR
	echo "_____________________________________________________"
	echo ""
	echo "[ INSTALL GRR (Google Rapid Response? (Y/n)] "
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding GRR to the list +++"
		echo 'https://github.com/google/grr.git' >> gitstall.sh
	else
		echo "--- Not Added ---"
	fi
	
#In
	echo "_____________________________________________________"
	echo ""
	echo "[ INSTALL NAME (Y/n)] "
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding NAME to the list +++"
		echo 'https://github.com/' >> gitstall.sh
	else
		echo "--- Not Added ---"
	fi
	
#In
	echo "_____________________________________________________"
	echo ""
	echo "[ INSTALL NAME (Y/n)] "
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding NAME to the list +++"
		echo 'https://github.com/' >> gitstall.sh
	else
		echo "--- Not Added ---"
	fi

#In
	echo "_____________________________________________________"
	echo ""
	echo "[ INSTALL NAME (Y/n)] "
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding NAME to the list +++"
		echo 'https://github.com/' >> gitstall.sh
	else
		echo "--- Not Added ---"
	fi
	
	#In
	echo "_____________________________________________________"
	echo ""
	echo "[ INSTALL NAME (Y/n)] "
	read install
	if [[ $install = Y || $install = y ]] ; then	
		echo "+++ Adding NAME to the list +++"
		echo 'https://github.com/' >> gitstall.sh
	else
		echo "--- Not Added ---"
	fi
	
	echo ""
	echo " ============================================================================== "
	echo "|     Select Applications                                                      |"
	echo "| SELECT REPOSITORIES                                                          |"
	echo "|     Select Setting And Tweaks                                                |"
	echo "|     Get Updates                                                              |"
	echo "|     Add Selected Repositories                                                |"
	echo "|     Add Tools From Git                                                       |"
	echo "|     Add Tools From Apt-Get                                                   |"
	echo "|     Add Tweaks and Settings                                                  |"
	echo "|     Clean Up The Mess                                                        |"
	echo " ============================================================================== "
	echo ""

#TWEAKS TO USE 
	echo ""
	echo " ============================================================================== "
	echo "|     Select Applications                                                      |"
	echo "|     Select Repositories                                                      |"
	echo "| SELECT SETTINGS AND TWEAKS                                                   |"
	echo "|     Get Updates                                                              |"
	echo "|     Add Selected Repositories                                                |"
	echo "|     Add Tools From Git                                                       |"
	echo "|     Add Tools From Apt-Get                                                   |"
	echo "|     Add Tweaks and Settings                                                  |"
	echo "|     Clean Up The Mess                                                        |"
	echo " ============================================================================== "
	echo ""


##### UPDATE AND UPGRADE EVERYTHING IN KALI #####
	echo ""
	echo " ============================================================================== "
	echo "|     Select Applications                                                      |"
	echo "|     Select Repositories                                                      |"
	echo "|     Select Setting And Tweaks                                                |"
	echo "| GET UPDATES                                                                  |"
	echo "|     Add Selected Repositories                                                |"
	echo "|     Add Tools From Git                                                       |"
	echo "|     Add Tools From Apt-Get                                                   |"
	echo "|     Add Tweaks and Settings                                                  |"
	echo "|     Clean Up The Mess                                                        |"
	echo " ============================================================================== "
	echo ""
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade
	echo "<><><><><> All Updates Complete.          <><><><><>" 

#####Run Install Scripts#####

#install needed repos 
	echo ""
	echo " ============================================================================== "
	echo "|     Select Applications                                                      |"
	echo "|     Select Repositories                                                      |"
	echo "|     Select Setting And Tweaks                                                |"
	echo "|     Get Updates                                                              |"
	echo "| ADDING SELECTED REPOSITORIES                                                 |"
	echo "|     Add tools from git                                                       |"
	echo "|     Add Tools From Apt-Get                                                   |"
	echo "|     Add Tweaks and Settings                                                  |"
	echo "|     Cleaning Up The Mess                                                     |"
	echo " ============================================================================== "
	echo ""
sudo sh ./repos.sh
	echo "<><><><><> Selected Repos Added           <><><><><>"

#install from GIT
	echo ""
	echo " ============================================================================== "
	echo "|     Select Applications                                                      |"
	echo "|     Select Repositories                                                      |"
	echo "|     Select Setting And Tweaks                                                |"
	echo "|     Get Updates                                                              |"
	echo "|     Add Selected Repositories                                                |"
	echo "| ADDING TOOLS FROM GIT                                                        |"
	echo "|     Add Tools From Apt-Get                                                   |"
	echo "|     Add Tweaks and Settings                                                  |"
	echo "|     Clean Up The Mess                                                        |"
	echo " ============================================================================== "
	echo ""
sudo sh ./gitstall.sh 
	echo "<><><><><> Finished With The Github Apps. <><><><><>"

#Install from apt-get
	echo ""
	echo " ============================================================================== "
	echo "|     Select Applications                                                      |"
	echo "|     Select Repositories                                                      |"
	echo "|     Select Setting And Tweaks                                                |"
	echo "|     Get Updates                                                              |"
	echo "|     Add Selected Repositories                                                |"
	echo "|     Add Tools From Git                                                       |"
	echo "| ADDING TOOLS FROM APT_GET                                                    |"
	echo "|     Add Tweaks and Settings                                                  |"
	echo "|     Clean Up The Mess                                                        |"
	echo " ============================================================================== "
	echo ""
sudo sh ./aptstall.sh 
	echo "<><><><><> Done With All Apps.            <><><><><>" 

#Adding Additional Settings
	echo ""
	echo " ============================================================================== "
	echo "|     Select Applications                                                      |"
	echo "|     Select Repositories                                                      |"
	echo "|     Select Setting And Tweaks                                                |"
	echo "|     Get Updates                                                              |"
	echo "|     Add Selected Repositories                                                |"
	echo "|     Add Tools From Git                                                       |"
	echo "|     Add Tools From Apt-Get                                                   |"
	echo "| ADDING TWEAKS AND SETTINGS                                                   |"
	echo "|     Clean Up The Mess                                                        |"
	echo " ============================================================================== "
	echo ""

#clean Things up
	echo ""
	echo " ============================================================================== "
	echo "|     Select Applications                                                      |"
	echo "|     Select Repositories                                                      |"
	echo "|     Select Setting And Tweaks                                                |"
	echo "|     Get Updates                                                              |"
	echo "|     Add Selected Repositories                                                |"
	echo "|     Add Tools From Git                                                       |"
	echo "|     Add Tools From Apt-Get                                                   |"
	echo "|     Add Tweaks and Settings                                                  |"
	echo "| Cleaning UP THE MESS                                                         |"
	echo " ================================================================================= "
	echo ""
sudo apt autoremove
	echo "<><><><><> You Are All Ready To Go.       <><><><><>"
	
	Echo 
