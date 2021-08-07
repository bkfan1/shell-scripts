echo "¿Qué deseas instalar?:

1. WINE + Ecosistema
2. Software Multimedia
"

read op

if [[ $op -eq 0 ]];

then
echo "Opción incorrecta. Vuelve a intentarlo."

elif [[ $op -eq 1 ]];

then

echo "Instalando ecosistema WINE..."

sudo pacman -S wine wine-gecko wine-mono winetricks giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader lutris

elif [[ $op -eq 2 ]];
then

echo "Instalando software multimedia..."

sudo pacman -S discord thunderbird vlc

fi