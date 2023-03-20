# WillKirkmanM .dotfiles

## Scripts
Give execution permission to scripts

**Make sure to `cd scripts` in order to run the scripts provided**

```
chmod +x -R scripts 
```

## Yay
Install yay and set no confirm for packages
```
./install_and_configure_yay
```

Install Packages
```
./install_yay_packages
```

## Neovim
Install Neovim
```
./install_neovim
```

## Natural Scrolling (Touchpad)
Edit xorg libinput config
```
sudo nvim /usr/share/X11/xorg.conf.d/40-libinput.conf
```

Add This:
`
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
	Option "NaturalScrolling" "True"
EndSection
`
