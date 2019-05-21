#!/bin/bash
#help-install.sh
#developed by Campos, distributed the Kontrol Bits System
#origin: https://github.com/G-campos/easy-installation
#I hope the feedback =)
#
#Script developed from examples found in the forum of viva la linux
#
####################################################################
function update(){
	echo "Updating repositories..."
	if ! sudo apt-get update ; then
		echo "Unable to update repositories. Check your file /etc/apt/sources.list"
		exit 1
	fi
	echo "Repositories successfully updated"

	echo "Updating already installed packages..."
	if ! sudo apt-get upgrade -y ; then
		echo "Could not update packages."
		echo 1		
	fi
	echo "Packages successfully updated"
}
function upsys(){
	if [[ condition ]]; then
		#statements
	fi
}









echo "Do you want to update before you start?
Yes(y) or Not(any key)"
echo "->Option:  "
read funtion upsys()


echo "==========================================================
        Enter the ID of the component to be installed:
            ID  -   PROGRAM	        ORIGEN
            
            1   -   GDEBI           APT
            2   -   GIMP            SNAP
            3   -   GOOGLE          DOWNLOAD
            4   -   JAVA            DOWNLOAD
            5   -   JAVA FX         DOWNLOAD
            6   -   JAVA SDK        DOWNLOAD
            7   -   KOLOURPAINT     SNAP
            8   -   NETBEANS        SNAP
            9   -   NODEJS          SNAP
            10  -   PHPSTORM        SNAP
            11  -   POSTMAN         SNAP
            12  -   RUBYMINE        SNAP
            13  -   SPOTIFY         SNAP
            14  -   SUBLIME TEXT    SNAP
            15  -   TEAM VIEWER     DOWNLOAD
            16  -   TELEGRAM        SNAP
            17  -   TIMESHIFT       APT
            18  -   VIRTUAL BOX     DOWNLOAD
            19  -   VS CODE         SNAP
            20  -   VLC             SNAP
            21  -   WPS OFFICE      SNAP
            0   -   SAIR


==========================================================="
