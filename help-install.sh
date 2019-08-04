#!/bin/bash
#help-install.sh
#developed by Campos, distributed the Kontrol Bits Systens
#origin: https://github.com/G-campos/easy-installation
#I hope the feedback =)
#
#Script developed from examples found in the forum of viva la linux
#
####################################################################
#

function progress_bar(){
	coluna=$(tput cols)
	linha=$(tput lines)

	tput cup 1 0
	echo "["
	tput cup 1 $coluna
	echo "]"

	tput cup 1 1
		clear
		for (( i=0; i<$coluna-2; i++ )); do
  			printf '%.s=' $i
  			sleep 0.01
		done
	echo
}

function sys_update(){
	echo "Updating repositories..."
	progress_bar
	if ! sudo apt-get update ; then
		echo "Unable to update repositories. Check your file /etc/apt/sources.list"
		exit 1
	fi
	echo "Repositories successfully updated"

	echo "Updating already installed packages..."
	progress_bar
	if ! sudo apt-get upgrade -y ; then
		echo "Could not update packages."
		echo 1		
	fi
	echo "Packages successfully updated"

	echo "Updating already installed packages for snap..."
	progress_bar
	if ! sudo snap refresh ; then
		echo "Could not update snapshots."
		echo 1		
	fi
	echo "Snapshots updated successfully"
}

function softwares(){
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
            9   -   NODEJS          PAT
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
	select i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 0; do
		case "$i" in
				1)
				clear
				echo "1   -   GDEBI           APT"	
				sudo apt-get install gdebi -y;;

				2)
				clear
				echo "2   -   GIMP            SNAP"
				sudo snap install gimp ;;

				0)
			        echo "Exit..."
			        clear
			        exit ;;
			    *)	
					clear 
			        echo
			        echo "ERROR: invalid option!!"
			        echo 
			        ;;
		esac
	done

}






##########################################################################
 
clear
echo "Do you want to update before you start?
Yes(y) or Not(any key)"
echo "->Option:  "
read op

	if [ $op == y ]; then
		echo "starting the update..."
		progress_bar
		sleep 1
		clear
		sys_update
		sleep 1
		softwares
	else
		echo ""
	fi


