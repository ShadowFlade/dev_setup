# dev_setup
repo for minimum time setup on a new PC

## Installation
copy setup.sh and execute it with with /bin/bash
(might need to download dotifiles with ssh, bc its kinda big (wifu pics are heavy))
## TODO
* download with ssh if possible
## Commands
### list monitors
xrandr
###
Download (any) Nerdfont.
Extract.
put the extracted folder into /usr/.local/share/fonts if you want them to be installed only to your user, or /usr/share/fonts if you want them installed globally.
Rebuild font cache by running fc-cache -f -v
Now if you open preferences in your terminal, you should be able to select the font you just installed.
