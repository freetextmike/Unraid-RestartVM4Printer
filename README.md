# Unraid-RestartVM4Printer

This is for my UNRAID machine with an Ubuntu headless vm

Problem: 

I tried to implement CUPS print server on docker first but encountered this problem: https://forums.unraid.net/topic/117514-support-cups-docker-repository/page/2/


when the printer is powercycled the container does not recognized the location of the printer although there is a static link (symlink) attached to teh vendor id and serial number
of the printer the cups container needs to be stopped and restarted for it to recognized the printer again


i implemeneted this thru a ubuntu headless vm and run this script using UserScript every minute

i know this is not a perfect solution but this works for me.


March 18,2023 
Made improvement on the script like VM detection if running
Also Made a Docker Variant for Docker Implementation 

of course i recommend the docker implementation because it is yes docker lol



Date	Changes Made
2023-03-18	Improved script with VM detection
Added Docker variant for implementation
2023-03-15	Initial commit
Implemented script for Ubuntu headless VM
Implemented UserScript to run every minute
Added problem statement and solution
This table shows the date of the changes made and a brief description of
