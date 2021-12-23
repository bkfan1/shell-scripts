main(){

    echo "
~~~~~~~~~~~~~~~~~~~~~~~~
#      JARCH MENÚ      # 
~~~~~~~~~~~~~~~~~~~~~~~~

------------------------
|     # INSTALL #      |
------------------------
| 1. Code Essentials   |
| 2. Media Essentials  |
| 3. Gaming Essentials |
| 4. WM Essentials     |
------------------------
    "
    echo "Choose an option:"
    read option

    if [[ $option -eq 1 ]]; then
        echo "Installing VSCode and Neovim..."
        yay -S --nodiffmenu --noeditmenu --nocleanmenu visual-studio-code-bin && sudo pacman -S --noconfirm --disable-download-timeout neovim
    fi

    if [[ $option -eq 2 ]]; then
        echo "Installing Firefox, VLC, Discord, Flameshot and Spotify..."
        sudo pacman -S --noconfirm --disable-download-timeout firefox vlc discord flameshot && yay -S --nodiffmenu --noeditmenu --nocleanmenu spotify
    fi

    if [[ $option -eq 3 ]]; then
        echo "Installing WINE and WINE related programs..."
        sudo pacman -S --noconfirm --disable-download-timeout  wine wine-gecko wine-mono winetricks giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader
    fi

    if [[ $option -eq 4 ]]; then
        echo "Installing WM related"
        sudo pacman -S --noconfirm --disable-download-timeout arandr nitrogen && yay -S --nodiffmenu --noeditmenu --nocleanmenu nm-applet pa-applet ttf-font-awesome
    fi


    if [[ ! $option -eq 1 || ! $option -eq 2 || ! $option -eq 3 || ! $option -eq 4 ]]; then
        echo "Wrong option. Try again"
    fi

}

main

