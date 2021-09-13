#!/bin/bash

echo "1. Para actualizar el sistema (Pacman)
2. Para actualizar el sistema (Pamac)"

read op

if [[ $op -eq 1 ]];
then
echo "Comprobando actualizaciones con Pacman..."
sudo pacman -Syu

elif [[ $op -eq 2 ]];
then
echo "Comprobando actualizaciones con Pamac..."
pamac checkupdates
fi

