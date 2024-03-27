#!/bin/bash
################################################################################
# this file is subject to Licence
# Copyright (c) 2023-2024, Acktarius
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

#Variables
user=$(id -nu 1000)

#Presentation function
presentation () {
clear
echo -e "${GRIS}# this file is subject to Licence,                                                             #"
echo -e "${GRIS}# Copyright (c) 2023-2024, Acktarius                                                           #"
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
echo -e "#${WHITE}  Kleopatra, ${GRIS}by KDE :${WHITE} \t\t\t certificate manager and a universal crypto GUI${TURNOFF}${GRIS}        #"
echo -e "#\t\t\t\t\t\t\t\t${LINK}https://apps.kde.org/kleopatra/${TURNOFF}${GRIS}#"
echo -e "#${WHITE}  Session, ${GRIS}by Oxen Project :${WHITE} \t\t private messenger${TURNOFF}${GRIS}                                     #"
echo -e "#\t\t\t\t\t\t\t\t${LINK}https://getsession.org/${TURNOFF}${GRIS}        #"
echo -e "#${WHITE}  LibreWolf, ${GRIS}by LibreWolf Community:${WHITE} \t custom version of firefox focused on Privacy${TURNOFF}${GRIS}\t       #"
echo -e "#\t\t\t\t\t\t\t\t${LINK}https://librewolf.net/${TURNOFF}${GRIS}\t       #"   
echo -e "${GRIS}#                                                                                              #"
echo -e "#${WHITE} other Apps to consider :${TURNOFF}${GRIS}                                                                     #"
echo -e "${GRIS}#                                                                                              #"
echo -e "#${WHITE}  Keet, ${GRIS}by holepunch :${WHITE} \t\t P2P chat${TURNOFF}${GRIS}\t\t                               #"
echo -e "#\t\t\t\t\t\t\t\t${LINK}https://keet.io/${TURNOFF}${GRIS}               #"              
echo -e "################################################################################################${TURNOFF}\n"
}

keetInstall() {
if [[ ! -d /home/${user}/.local/share/appimages ]]; then
mkdir -p /home/${user}/.local/share/appimages
fi
wget https://keet.io/downloads/2.0.0/Keet-x64.tar.gz -O - | tar -xz -C /home/${user}/.local/share/appimages/ &> /dev/null
wget https://keet.io/static/media/keet-logo.bbfeb7cae3dd60f6e845.png -O /home/${user}/.icons/keet.png &> /dev/null
cat << EOF > /home/${user}/.local/share/applications/keet.desktop
[Desktop Entry]
Name=Keet
Exec=/home/${user}/.local/share/appimages/Keet.AppImage %U
Terminal=false
Icon=keet.png
Type=Application
StartupWMClass=Keet
X-AppImage-Version=1.0.1
Comment=Keet
MimeType=x-scheme-handler/holepunch;x-scheme-handler/punch;x-scheme-handler/pear
EOF
}
keetUninstall() {
rm -f /home/${user}/.local/share/applications/keet.desktop \
/home/${user}/.icons/keet.png \
${keetPathFile}
}


#MAIN
presentation

#list of Application
listapps=("Authenticator" "Obfuscate" "File_Shredder" "OnionShare" "Kleopatra" "Session" "LibreWolf" "Keet")

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

kleopatra=$(flatpak list --app | grep "Kleopatra" -c )
if [[ $kleopatra -gt 0 ]]; then apps[4]=1; else apps[4]=0; fi

session=$(flatpak list --app | grep "Session" -c )
if [[ $session -gt 0 ]]; then apps[5]=1; else apps[5]=0; fi


if [[ $(flatpak list --app | grep "LibreWolf" -c ) -gt 0 ]]; then apps[6]=1; else apps[6]=0; fi

keet=$(find /home/${user}/.local/share/applications -iname keet.desktop | grep "keet" -c )
if [[ $keet -gt 0 ]]; then apps[7]=1 \
keetPathFile=$(cat /home/${user}/.local/share/applications/keet.desktop | grep "Exec=" | cut -d "=" -f 2 | tr -s ' ' | cut -d " " -f 1)
else apps[7]=0; fi

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
echo -e "${WHITE}Apps available to install :"
for i in ${!installable[@]}; do
if [[ -n ${installable[i]} ]]; then
echo -e "\t\t\t\t${ORANGE}${installable[i]}"
fi
done
echo -e "\n${ORANGE}Install... ?\n"
for q in "${!installable[@]}"; do
zeninstallable+="FALSE ${installable[$q]} "
done
sleep 2
zinstallable=$(zenity --list --checklist --height 320 --width 400 --timeout 20 --title "Apps you want to INSTALL" \
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
presentation
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
		"Kleopatra")
		flatpak install flathub org.kde.kleopatra
		;;
		"Session")
		flatpak install flathub network.loki.Session
		;;
		"Keet")
		keetInstall
		;;
		"LibreWolf")
		flatpak install flathub io.gitlab.librewolf-community
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
echo -e "${WHITE}Apps already installed,\n\t and could be uninstall:"
for  i in ${!removable[@]}; do
if [[ -n ${removable[i]} ]]; then
echo -e "\t\t\t\t${ORANGE}${removable[i]}"
fi
done
echo -e "\n${ORANGE}UNInstall... ?\n"
for l in "${!removable[@]}"; do
zenremovable+="FALSE ${removable[$l]} "
done
sleep 2
zremovable=$(zenity --list --checklist --height 320 --width 400 --timeout 20 --title "Apps you want to REMOVE" \
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
presentation
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
		"Kleopatra")
		flatpak uninstall --delete-data org.kde.kleopatra
		;;
		"Session")
		flatpak uninstall --delete-data network.loki.Session
		;;
		"Keet")
		keetUninstall
		;;
		"LibreWolf")
		flatpak uninstall --delete-data io.gitlab.librewolf-community
		;;
		*)
		echo -e "${ORANGE}Something seems wrong${TURNOFF}"
		;;
	esac
done
echo -e "\n${GRIS}\t flatpak cleanup${TURNOFF}"
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
