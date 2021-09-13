#!/bin/bash

function install_applets() {
    voidSpace
    echo "Installing Applets..."
    yay -S nm-applet pa-applet
    echo "Nm-applet & pa-applet installed."
    msg_tryReload
}

function install_desktopAssets() {
    voidSpace
    echo "Installing Xrandr & Nitrogen..."
    yay -S xrandr nitrogen
    echo "Xrandr & Nitrogen installed."
    msg_closeSession
}

function install_fontAwesome() {
    voidSpace
    echo "Installing FontAwesome..."
    yay -S ttf-font-awesome 
    echo "Font-Awesome installed."
    msg_tryReload

}

function voidSpace() {
    echo ""
}

function msg_wrongOp(){
    echo "Wrong option, try again!!"
}

function msg_tryReload(){
    echo "Try to reload your i3 config file to see the changes!"
}

function msg_closeSession(){
    echo "Close your session and log again to see the changes!"
}

function main() {
    echo "
 Install i3wm assets:
 1. for Desktop assets
 2. for Applets (nm & pa)
 3. for FontAwesome
 "
    echo " Type your option:"
    read op

    # Always ident your code after an if statement
    if [[ $op -eq 1 ]]; then
        install_desktopAssets

    elif [[ $op -eq 2 ]]; then
        install_applets

    elif [[ $op -eq 3 ]]; then
        install_fontAwesome

    else
        msg_wrongOp
    fi

}

# Executing the main function
main