#!/bin/bash

#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
transparent="\e[0m"

About(){
echo ""
		   sleep 0.01 && echo -e "$purple "
				

							sleep 0.01 && echo -e "				███████╗████████╗███████╗"
							sleep 0.02 && echo -e "				╚══███╔╝╚══██╔══╝██╔════╝"
							sleep 0.03 && echo -e "				  ███╔╝    ██║   █████╗  "
							sleep 0.04 && echo -e "				 ███╔╝     ██║   ██╔══╝  "
							sleep 0.05 && echo -e "				███████╗   ██║   ██║     "
							sleep 0.06 && echo -e "				╚══════╝   ╚═╝   ╚═╝     "
                         echo""
                         echo -e "$green"
                sleep 0.01 && echo "  This tool is used to gather data from nearby wifi targets."
                sleep 0.01 && echo "  use wireshark to read/decode the .cap files ."
                sleep 0.01 && echo "  This tool is used for educational purposes only and in controlled environments."
                sleep 0.01 && echo "  Don't be an asshole , cheers , ZTF."
                sleep 0.01 &&echo "  for more informations or just to say hi , email me here : ZTF666@protonmail.ch"
                sleep 0.01 && echo "  https://github/ZTF666/ZTF_SN34KII_SCRIPT"
				sleep 0.01 && echo "  https://ztfportfolio.web.app"
                echo ""




echo -e " "$red"["$yellow"i"$red"]"$transparent"Options :"
		echo -e "      "$red"["$yellow"1"$red"]"$transparent" Main menu " 
		 echo -e "      "$red"["$yellow"2"$red"]"$transparent" Exit " 
		
 		echo -n -e ""$red"["$red"SN34KII"$grey"@"$red"ZTF"$red"]-["$green"~"$red"]"$transparent""
 		while true; do
    
read SELECT
  case $SELECT in

  	1)
clear
header
main 
	;;
	2)
	close
		;;
	*)
		echo "Wrong choice"
		;;
  esac
done









}



header(){

	echo ""
		   sleep 0.01 && echo -e "$red "
				sleep 0.01 && echo -e "           	███████╗███╗   ██╗██████╗ ██╗  ██╗██╗  ██╗██╗██╗"
				sleep 0.01 && echo -e "           	██╔════╝████╗  ██║╚════██╗██║  ██║██║ ██╔╝██║██║"
				sleep 0.01 && echo -e "           	███████╗██╔██╗ ██║ █████╔╝███████║█████╔╝ ██║██║"
				sleep 0.01 && echo -e "           	╚════██║██║╚██╗██║ ╚═══██╗╚════██║██╔═██╗ ██║██║"
				sleep 0.01 && echo -e "           	███████║██║ ╚████║██████╔╝     ██║██║  ██╗██║██║"
				sleep 0.01 && echo -e "                ╚══════╝╚═╝  ╚═══╝╚═════╝      ╚═╝╚═╝  ╚═╝╚═╝╚═╝"

	echo""

	sleep 0.1
	echo -e $red"                              SN34KII "$red"by "$white" ZTF [N.E.A]"
	sleep 0.1
	echo ""
	echo -e $green "                   Page:"$red"https://github.com/ZTF666/ZTF_SN34KII_SCRIPT "$transparent ;
	echo ""
	echo ""
}



close(){
	xterm $HOLD -title "Stopping monitor mode" $TOPLEFTBIG -bg "#000000" -fg "#FFFFFF" -e airmon-ng stop wlan0mon
	echo -e $green" cleaning done , till next time !"
	exit
}
SetMonitor() {

	 xterm $HOLD -title "Monitoring..." -e airmon-ng start wlan0  

clear
header
   		echo -e " "$red"["$yellow"i"$red"]"$transparent" Options :"

		echo "  "
		echo -e "      "$red"["$yellow"1"$red"]"$transparent" Start monitoring  " 
		echo -e "      "$red"["$yellow"2"$red"]"$transparent" Exit " 
		
 		echo -n -e ""$red"["$red"SN34KII"$grey"@"$red"ZTF666"$red"]-["$green"~"$red"]"$transparent""

 		while true; do
    
read SELECT
  case $SELECT in
	1)
		#xterm $HOLD -title "Monitoring..." -e airodump-ng wlan0mon 
		StartMonitor
		;;
	2)
		close;;
	*)
		echo "Wrong choice"
		;;
  esac
done

}
StartMonitor() {

	xterm $HOLD -title "Monitoring..." -e airodump-ng wlan0mon 

clear
header
   		echo -e " "$red"["$yellow"i"$red"]"$transparent" Options :"

		echo "  "
		echo -e "      "$red"["$yellow"1"$red"]"$transparent" Sniff target " 
		echo -e "      "$red"["$yellow"2"$red"]"$transparent" Exit " 
		
 		echo -n -e ""$red"["$red"SN34KII"$grey"@"$red"ZTF666"$red"]-["$green"~"$red"]"$transparent""
 		while true; do
    
read SELECT
  case $SELECT in
	1)

		Sniff ;;
	2)
		close;;
	*)
		echo "Wrong choice"
		;;
  esac
done

}


Handshake(){

echo -e " "$red"["$yellow"i"$red"]"$transparent" Setup target's infos :"

echo -e "      "$red"["$yellow"1"$red"]"$transparent" Enter Bssid :" 
		read Bssid
echo -e "      "$red"["$yellow"1"$red"]"$transparent" Enter essid :" 
		read  essid
echo -e "      "$red"["$yellow"1"$red"]"$transparent" Enter channel's number :" 
		read  cn
echo -e "      "$red"["$yellow"1"$red"]"$transparent" Name your save files :" 
		read  pth
echo $Bssid" | "$essid" | "$cn" | "$pth
   		

   		xterm $HOLD -title "Capturing... wait for handshake" $TOPLEFTBIG -bg "#000000" -fg "#FFFFFF" -e airodump-ng --bssid $Bssid --essid $essid -c $cn -w $pth wlan0mon --ignore-negative-one
   		 }

Sniff() {

	 Handshake ;
	 clear
	 header
echo -e " "$red"["$yellow"i"$red"]"$transparent"Options :"
		echo -e "      "$red"["$yellow"1"$red"]"$transparent" Main menu " 
		 echo -e "      "$red"["$yellow"2"$red"]"$transparent" Exit " 
		
 		echo -n -e ""$red"["$red"SN34KII"$grey"@"$red"ZTF666"$red"]-["$green"~"$red"]"$transparent""
 		while true; do
    
read SELECT
  case $SELECT in
  	1)main 
	;;
	2)
	close
		;;
	*)
		echo "Wrong choice"
		;;
  esac
done

}
back(){
	main;
}



main(){
while true;
do

		echo -e ""$red"["$yellow"i"$red"]"$transparent" Options :"
		echo "                                       "
		echo -e "      "$red"["$yellow"1"$red"]"$transparent" Set monitoring  interface       " 
		echo -e "      "$red"["$yellow"2"$red"]"$transparent" About       "
		echo -e "      "$red"["$yellow"3"$red"]"$transparent" Exit     "
		echo ""
		echo -n -e ""$red"["$red"SN34KII"$grey"@"$red"ZTF666"$red"]-["$green"~"$red"]"$transparent""

  read INPUT_STRING
  case $INPUT_STRING in
	1)
		SetMonitor 

		;;
		
		
	2)
		About;;
	3)
		close
		;;
	*)
		echo "Wrong choice"
		;;
  esac
done
echo 
}

######################################################################################
echo ""
		   sleep 0.01 && echo -e "$red "
				sleep 0.01 && echo -e "           	███████╗███╗   ██╗██████╗ ██╗  ██╗██╗  ██╗██╗██╗"
				sleep 0.01 && echo -e "           	██╔════╝████╗  ██║╚════██╗██║  ██║██║ ██╔╝██║██║"
				sleep 0.01 && echo -e "           	███████╗██╔██╗ ██║ █████╔╝███████║█████╔╝ ██║██║"
				sleep 0.01 && echo -e "           	╚════██║██║╚██╗██║ ╚═══██╗╚════██║██╔═██╗ ██║██║"
				sleep 0.01 && echo -e "           	███████║██║ ╚████║██████╔╝     ██║██║  ██╗██║██║"
				sleep 0.01 && echo -e "                ╚══════╝╚═╝  ╚═══╝╚═════╝      ╚═╝╚═╝  ╚═╝╚═╝╚═╝"

	echo""

	sleep 0.1
	echo -e $red"                              SN34KII "$red"by "$white" ZTF [N.E.A]"
	sleep 0.1
	echo ""
	echo -e $green "                   Page:"$red"https://github.com/ZTF666/ZTF_SN34KII_SCRIPT "$transparent ;
	echo ""
	echo ""
	main;
#############################################################################################################