#!/bin/bash

# Obtenir le nom du premier écran connecté
primary=$(xrandr | grep " connected" | awk 'NR==1{print $1}')

# Activer le premier écran et désactiver tous les autres
for output in $(xrandr | grep " connected" | awk '{print $1}'); do
    if [ "$output" == "$primary" ]; then
        # Activer uniquement l'écran primaire
        xrandr --output "$primary" --auto
    else
        # Désactiver les autres écrans
        xrandr --output "$output" --off
    fi
done
