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
