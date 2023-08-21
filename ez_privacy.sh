#!/bin/bash
################################################################################
# this file is subject to Licence
# Copyright (c) 2023, Acktarius
################################################################################
#Couleurs
case "$TERM" in
        xterm-256color)
        WHITE=$(tput setaf 7 bold)
        RED=$(tput setaf 125 bold)
        ORANGE=$(tput setaf 202)
        GRIS=$(tput setaf 245)
	LINK=$(tput setaf 4 smul)
        TURNOFF=$(tput sgr0)
        ;;
        *)
        WHITE=''
        RED=''
	ORANGE=''
        GRIS=''
	LINK=''
        TURNOFF=''
        ;;
esac


#Presentation function
presentation () {
clear
echo -e "${GRIS}# this file is subject to Licence,                                                             #"
echo -e "${GRIS}# Copyright (c) 2023, Acktarius                                                                #"
echo -e "${GRIS}#                                                                                              #"                                                                  
echo -e "# ${ORANGE}'########${GRIS}:${ORANGE}'########${GRIS}::::${ORANGE}'########${GRIS}::${ORANGE}'########${GRIS}::${ORANGE}'####:'##${GRIS}::::${ORANGE}'##${GRIS}::::${ORANGE}'###${GRIS}:::::${ORANGE}'######${GRIS}::${ORANGE}'##${GRIS}:::${ORANGE}'##${GRIS}:#"
echo -e "# ${ORANGE}##${GRIS}.....::..... ${ORANGE}##${GRIS}::::: ${ORANGE}##${GRIS}.... ${ORANGE}##${GRIS}: ${ORANGE}##${GRIS}.... ${ORANGE}##${GRIS}:. ${ORANGE}##${GRIS}:: ${ORANGE}##${GRIS}:::: ${ORANGE}##${GRIS}:::${ORANGE}'## ##${GRIS}:::${ORANGE}'##${GRIS}... ${ORANGE}##${GRIS}:. ${ORANGE}##${GRIS}:${ORANGE}'##${GRIS}:: #"
echo -e "# ${ORANGE}##${GRIS}::::::::::: ${ORANGE}##${GRIS}:::::: ${ORANGE}##${GRIS}:::: ${ORANGE}##${GRIS}: ${ORANGE}##${GRIS}:::: ${ORANGE}##${GRIS}:: ${ORANGE}##${GRIS}:: ${ORANGE}##${GRIS}:::: ${ORANGE}##${GRIS}::'${ORANGE}##${GRIS}:. ${ORANGE}##${GRIS}:: ${ORANGE}##${GRIS}:::..:::. ${ORANGE}####${GRIS}::: #"
echo -e "# ${ORANGE}######${GRIS}:::::: ${ORANGE}##${GRIS}::::::: ${ORANGE}########${GRIS}:: ${ORANGE}########${GRIS}::: ${ORANGE}##${GRIS}:: ${ORANGE}##${GRIS}:::: ${ORANGE}##${GRIS}:${ORANGE}'##${GRIS}:::. ${ORANGE}##${GRIS}: ${ORANGE}##${GRIS}:::::::::. ${ORANGE}##${GRIS}:::: #"
echo -e "# ${ORANGE}##${GRIS}...:::::: ${ORANGE}##${GRIS}:::::::: ${ORANGE}##${GRIS}.....::: ${ORANGE}##${GRIS}.. ${ORANGE}##${GRIS}:::: ${ORANGE}##${GRIS}::. ${ORANGE}##${GRIS}:: ${ORANGE}##${GRIS}:: ${ORANGE}#########${GRIS}: ${ORANGE}##${GRIS}:::::::::: ${ORANGE}##${GRIS}:::: #"
echo -e "# ${ORANGE}##${GRIS}:::::::: ${ORANGE}##${GRIS}::::::::: ${ORANGE}##${GRIS}:::::::: ${ORANGE}##${GRIS}::. ${ORANGE}##${GRIS}::: ${ORANGE}##${GRIS}:::. ${ORANGE}## ##${GRIS}::: ${ORANGE}##${GRIS}.... ${ORANGE}##${GRIS}: ${ORANGE}##${GRIS}::: ${ORANGE}##${GRIS}:::: ${ORANGE}##${GRIS}:::: #"
echo -e "# ${ORANGE}########${GRIS}: ${ORANGE}########${GRIS}:::: ${ORANGE}##${GRIS}:::::::: ${ORANGE}##${GRIS}:::. ${ORANGE}##${GRIS}:'${ORANGE}####${GRIS}:::. ${ORANGE}###${GRIS}:::: ${ORANGE}##${GRIS}:::: ${ORANGE}##${GRIS}:. ${ORANGE}######${GRIS}::::: ${ORANGE}##${GRIS}:::: #"
echo -e "#........::........:::::..:::::::::..:::::..::....:::::...:::::..:::::..:::......::::::..::::: #"
echo -e "${GRIS}#                                                                                              #"
echo -e "#${WHITE} Install Wizard for Flathub Apps dedicated to Privacy :${TURNOFF}${GRIS}                                       #"
echo -e "${GRIS}#                                                                                              #"
echo -e "#${WHITE}  Authenticator, ${GRIS}by Bilal Elmoussaoui :${WHITE} Generate Two-Factor Codes${TURNOFF}${GRIS}                             #"
echo -e "#${WHITE}  Obfuscate, ${GRIS}by Bilal Elmoussaoui :${WHITE} \t Censor private information${TURNOFF}${GRIS}                            #"
echo -e "#\t\t\t\t\t\t\t\t${LINK}https://belmoussaoui.com/${TURNOFF}${GRIS}      #"
echo -e "#${WHITE}  File Shredder, ${GRIS}by Alan Beveridge :${WHITE} \t Securely delete your files${TURNOFF}${GRIS}                            #"
echo -e "#\t\t\t\t\t\t\t\t${LINK}https://github.com/ADBeveridge${TURNOFF}${GRIS} #"
echo -e "#${WHITE}  Onion Share, ${GRIS}by Micah Lee :${WHITE} \t\t Securely and anonymously share files${TURNOFF}${GRIS}                  #"
echo -e "#\t\t\t\t\t\t\t\t${LINK}https://onionshare.org/${TURNOFF}${GRIS}        #"            
echo -e "#${GRIS}                                                                                              #"
echo -e "################################################################################################${TURNOFF}\n"
}

presentation

#Test zenity installed
if [[ ! -f /bin/zenity ]]; then
echo -e "${ORANGE}Zenity is needed for this script${GRIS}\nto install it: ${WHITE}sudo apt install zenity${TURNOFF}\n"
exit
fi
#Test flatpak installed
if [[ ! -f /bin/flatpak ]]; then
echo -e "${ORANGE}Flatpak is needed to install the apps${GRIS}\n"
sleep 1
iflatpak=$(zenity --question --title "Flatpak installation" --width 400 --height 100 --text "Do you wish to proceed ?")
if [[ $iflatpak -eq 0 ]]; then
add-apt-repository ppa:flatpak/stable 
s=$?
if [[ $s -ne 0 ]]; then echo "error updating repository"; sleep 2; exit; fi
sudo apt-get update
s=$?
if [[ $s -ne 0 ]]; then echo "error during apt update"; sleep 2; exit; fi
sudo apt-get install flatpak
s=$?
if [[ $s -ne 0 ]]; then echo "error during flatpak installation"; sleep 2; exit; fi
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
s=$?
if [[ $s -ne 0 ]]; then echo "error during repo update"; sleep 2; exit; fi
sleep 2
presentation
else
echo "See you later !"
sleep 1
exit
fi
fi

#list of Application
listapps=( "Authenticator" "Obfuscate" "File_Shredder" "OnionShare" )

#list application installed
declare -a apps
authenticator=$(flatpak list --app | grep "Authenticator" -c )
if [[ $authenticator -gt 0 ]]; then apps[0]=1; else apps[0]=0;  fi

obfuscate=$(flatpak list --app | grep "Obfuscate" -c )
if [[ $obfuscate -gt 0 ]]; then apps[1]=1; else apps[1]=0; fi

fileshredder=$(flatpak list --app | grep "File Shredder" -c )
if [[ $fileshredder -gt 0 ]]; then apps[2]=1; else apps[2]=0; fi

onionshare=$(flatpak list --app | grep "OnionShare" -c )
if [[ $onionshare -gt 0 ]]; then apps[3]=1; else apps[3]=0; fi

declare -a installable
declare -a removable

for k in "${!apps[@]}"
do
	if [[ apps[$k] -eq 1 ]]; then 
	removable[$k]=${listapps[$k]}
	else
	installable[$k]=${listapps[$k]}
	fi
done

if [[ ${#installable[@]} -eq 0 ]]; then
echo -e "${ORANGE}All the Apps already installed.\n"

else
echo -e "${WHITE}Apps available to install : ${ORANGE}${installable[@]}"
echo -e "\n${ORANGE}Install... ?\n"
for q in "${!installable[@]}"; do
zeninstallable+="FALSE ${installable[$q]} "
done
sleep 5
zinstallable=$(zenity --list --checklist --height 280 --width 400 --timeout 15 --title "Apps you want to Install" \
--column "Select" --column "App" \
$zeninstallable
)

if [[ -z ${zinstallable} ]]; then
echo -e "\n${ORANGE}no app selected\n"
else
nb=$(echo "$zinstallable" | tr -cd "|" | wc -c)

declare -a toinstall

for ((r = 0 ; r < ( ${nb}+1 ) ; r++)); do
toinstall[r]=$(echo "$zinstallable" | cut -d "|" -f $(( $r + 1 )))
done

for app in "${toinstall[@]}"; do
echo -e "\n${WHITE}Install ${ORANGE}${app} ${WHITE}?${TURNOFF}"
	case $app in
		"Authenticator")
		flatpak install flathub com.belmoussaoui.Authenticator
		;;
		"Obfuscate")
		flatpak install flathub com.belmoussaoui.Obfuscate
		;;
		"File_Shredder")
		flatpak install flathub com.github.ADBeveridge.Raider
		;;
		"OnionShare")
		flatpak install flathub org.onionshare.OnionShare
		;;
		*)
		echo -e "${ORANGE}Something seems wrong${TURNOFF}"
		;;
	esac	
done
fi
fi


#Something to remove ?
if [[ ${#removable[@]} -eq 0 ]]; then
echo -e "${ORANGE}nothing to remove"
else
presentation
echo -e "${WHITE}Apps already installed,\n\t and could be uninstall :  ${ORANGE}${removable[@]}"
echo -e "\n${ORANGE}UNInstall... ?\n"
for l in "${!removable[@]}"; do
zenremovable+="FALSE ${removable[$l]} "
done
sleep 5
zremovable=$(zenity --list --checklist --height 280 --width 400 --timeout 15 --title "Apps you want to remove" \
--column "Select" --column "App" \
$zenremovable
)

if [[ -z ${zremovable} ]]; then
echo -e "\n${ORANGE}no app selected\n"
else
nb=$(echo "$zremovable" | tr -cd "|" | wc -c)

declare -a toremove

for ((m = 0 ; m < ( ${nb}+1 ) ; m++)); do
toremove[m]=$(echo "$zremovable" | cut -d "|" -f $(( $m + 1 )))
done

for app in "${toremove[@]}"; do
echo -e "\n${WHITE}Remove ${ORANGE}${app} ${WHITE}?${TURNOFF}"
	case $app in
		"Authenticator")
		flatpak uninstall --delete-data com.belmoussaoui.Authenticator
		;;
		"Obfuscate")
		flatpak uninstall --delete-data com.belmoussaoui.Obfuscate
		;;
		"File_Shredder")
		flatpak uninstall --delete-data com.github.ADBeveridge.Raider
		;;
		"OnionShare")
		flatpak uninstall --delete-data org.onionshare.OnionShare
		;;
		*)
		echo -e "${ORANGE}Something seems wrong${TURNOFF}"
		;;
	esac	
done
flatpak uninstall --unused
fi
fi

#exit
sleep 2
echo -e "\n${TURNOFF}press ${WHITE}Ctrl-C${TURNOFF} to exit"
t=0
for t in {0..10}; do
sleep 1
echo -ne "auto exit in $(( 10-${t} )) seconds \033[0K\r"
done
unset t
exit
