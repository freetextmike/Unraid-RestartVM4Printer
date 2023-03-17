# Unraid-RestartVM4Printer

This is for my Unraid machine with an Ubuntu headless VM.

## Problem

I tried to implement a CUPS print server on Docker, but encountered this problem: https://forums.unraid.net/topic/117514-support-cups-docker-repository/page/2/.

When the printer is power cycled, the container does not recognize the location of the printer, although there is a static link (symlink) attached to the vendor ID and serial number of the printer. The CUPS container needs to be stopped and restarted for it to recognize the printer again.

I implemented this through an Ubuntu headless VM and run this script using UserScript every minute. I know this is not a perfect solution, but it works for me.

## Changelog

| Date       | Changes Made                                  |
|------------|-----------------------------------------------|
| 2023-03-18 | Improved script with VM detection             |
|            | Added Docker variant for implementation        |
| 2023-03-15 | Initial commit                                |
|            | Implemented script for Ubuntu headless VM     |
|            | Implemented UserScript to run every minute    |
|            | Added problem statement and solution          |

I recommend the Docker implementation because it is, well, Docker! 
