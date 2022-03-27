#!/bin/bash

# désactiver pulseaudio
systemctl --user stop pulseaudio.socket
systemctl --user stop pulseaudio.service

# pour redémarrer pulseaudio, on utiliserait
# systemctl --user start pulseaudio.socket
# systemctl --user start pulseaudio.service

# démarrer le programme avec chuck
chuck.alsa /home/xor/emoc/lullaby_ninja.ck 
