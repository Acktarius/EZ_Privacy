# EZ_Privacy
**wizard installer for privacy apps from flathub for Ubuntu User.**

* ### Authenticator, by Bilal Elmoussaoui : Generate Two-Factor Codes
* ### Obfuscate, by Bilal Elmoussaoui : Censor private information  
  https://belmoussaoui.com/
* ### File Shredder, by Alan Beveridge : Securely delete your files  
  https://github.com/ADBeveridge
* ### Onion Share, by Micah Lee : Securely and anonymously share files 
  https://onionshare.org/

*Please refer to the different developpers website for more informations, license and copyrights,
also refer to* 
[flathub.org/](https://flathub.org/)

#
**This wizard installers aims to regroup apps dedicated to privacy and facilitate their installation**
#
## Install:
place icon .png in `~/.icons` folder

place script .sh in folder of your choice, ie. `/opt/EZ_Privacy/`

place launcher .desktop in `~/.local/share/applications/`
modify the `EXEC` line in the .desktop file as needed using your favorite text editor, 
to point the route to the .sh file.

ie. `Exec=gnome-terminal --title=EZ_Privacy --active --geometry=100x40 -- bash -c 'sudo `*your_path_to*`/ez_privacy.sh ; exit'`

logout and log back in,
  the icon should now be available

  ## Run :
  click on the icon, enjoy !
