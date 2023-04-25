# WillKirkmanM .dotfiles

## Scripts

Give execution permission to scripts

**Make sure to `cd scripts` in order to run the scripts provided**

```
chmod +x -R scripts
```

## Install

To install the dotfiles, run this command

```
./setup_dotfiles
```

## Natural Scrolling (Touchpad)

Edit xorg libinput config

```
sudo nvim /usr/share/X11/xorg.conf.d/40-libinput.conf
```

Add This:

```
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
	Option "NaturalScrolling" "True"
EndSection
```

## Default Apps

Make sure to change default apps in KDE Settings

## Errors

Some fixes I found for different errors:

_Command Ran_
`$ ls .`

_Error Found_
`ls: cannot open directory 'repositories/': Permission denied`

_Fix_

```
$ chmod 700 .
```

## Lenovo Convervation Mode

(Thanks: https://github.com/cszach/linux-on-lenovo-legion#battery-conservation-mode)

```
$ echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004*/conservation_mode
```

## Current GPU

```
$ glxinfo | egrep "OpenGL vendor|OpenGL renderer"
```

## Steam

Taken From https://github.com/cszach/linux-on-lenovo-legion#steam

The technique also applies to Steam games. In your Library, edit the Properties of the game that you wish to run on your graphics card. Under launch options, edit the launch command, and use %command% as the placeholder for the actual game command. For example, here is my launch command for Quake II RTX (NVIDIA dGPU):

```
__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia %command%
```

## Tmux
Note! Run the command Ctrl + b  +  I (capital) to install the tmux packages
