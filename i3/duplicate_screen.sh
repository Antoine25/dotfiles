#!/bin/bash

# Obtenir le nom du premier écran connecté
primary=$(xrandr | grep " connected" | awk 'NR==1{print $1}')

# Activer et configurer chaque écran pour dupliquer l'affichage du primaire
for output in $(xrandr | grep " connected" | awk '{print $1}'); do
    if [ "$output" != "$primary" ]; then
        # Activer l'écran
        xrandr --output "$output" --auto
        # Configurer l'écran pour dupliquer l'affichage du primaire
        xrandr --output "$output" --same-as "$primary"
    else
        # Activer le primaire également pour être sûr
        xrandr --output "$primary" --auto
    fi
done
