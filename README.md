

dwm - dynamic window manager
============================
dwm is an extremely fast, small, and dynamic window manager for X.

Changes from default dwm
------------------------

- Volume control via pulse audio
- Brightness Control via brightnessctl
- Modified keybindings
- Fullscreen mode
- FullGaps patch applied
- Status.sh a very minimal status bar with volume, brightness, battery and date information.
- This puppy can swallow windows like a beast (i.e. has swallow patch applied)


Requirements
------------
In order to build dwm you need the Xlib header files.

Optionally this build is using:

- Alacritty
- Dmenu
- Brave
- Compton (aka picom)
- Brightnessctl
- Pulse Audio


Installation
------------
Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm (if
necessary as root):

    make clean install


Running dwm
-----------
Add the following line to your .xinitrc to start dwm using startx:

    exec dwm

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec dwm

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar. Put status and killStat in your /bin/

then call status in your .xprofiles file

Configuration
-------------
The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.
