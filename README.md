# Lullaby Ninja

En cours, pas encore au point!

bouton (arduino) -> script chuck (ordi)

**lullaby-ninja.ck** script chuck de départ : prendre 10 secondes de son, en jouer progressivement 10 couches superposées

**test_serial.ck** : script de test des infos série envoyées par arduino

**demarrer_lullaby_ninja.sh** : script bash pour désactiver pulseaudio et lancer le script

**chuck_save_adc.ck** pour mémoire un script qui enregistre l'entrée micro

## Utilisation

Pour l'instant : lancer le script qui enregistre 10 secondes de son, une fois l'enregistrement terminé, des extraits plus ou moins longs sont lus à des vitesses aléatoires.

Pour le futur : installation autonome : on appuie sur le bouton, une led s'allume pendant les 10 secondes d'enregistrement, quand elle s'éteint, des extraits sont ajoutés à la texture en cours de lecture.

## TODO

matériel : trouver des enceintes et un micro adaptés  
tester le script sans écran  
ajouter des potentiomètres pour faire varier les conditions de boucle  
ajouter un second bouton pour enregistrer (1 minute), cf. script chuck_save_adc.ck

## Installation

SerialIO est présent dans chuck depuis la version 1.3.2.0 (chimera)

Pour compiler chuck sur Debian
* télécharger https://chuck.cs.princeton.edu/release/files/chuck-1.4.1.0.tgz
* puis

```
sudo apt-get install make gcc g++ bison flex libasound2-dev libsndfile1-dev libqt4-dev libqscintilla2-dev [libpulse-dev] [libjack-jackd2-dev]
tar xvzf chuck-1.4.1.0.tgz # décompresser
cd ./chuck-1.4.1.0/src/
make linux-alsa
sudo make install
# fermer et réouvrir le terminal
```

## Ressources

* exemples chuck serial : https://chuck.cs.princeton.edu/doc/examples/serial/
* exemples chuck LiSa (Live Sampling / granular) : https://chuck.cs.princeton.edu/doc/examples/#lisa
