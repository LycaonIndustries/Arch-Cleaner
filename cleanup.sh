#!/bin/bash
#Author: TheFenrisLycaon
#Github: https://github.com/TheFenrisLycaon

echo '                  -`'
echo '                 .o+`'
echo '                `ooo/'
echo '               `+oooo:'
echo '              `+oooooo:'
echo '              -+oooooo+:'
echo '            `/:-:++oooo+:'
echo '           `/++++/+++++++:'
echo '          `/++++++++++++++:'
echo '        `/+++ooooooooooooo/`'
echo '        ./ooosssso++osssssso+`'
echo '       .oossssso-````/ossssss+`'
echo '      -osssssso.      :ssssssso.'
echo '     :osssssss/        osssso+++.'
echo '    /ossssssss/        +ssssooo/-'
echo '  `/ossssso+/:-        -:/+osssso+-'
echo ' `+sso+:-`   Arch Cleaner  `.-/+oso:'
echo '`++:.                           `-/+/'
echo '.`             Mark - I             ` '

echo ''
echo ''
echo '====== Sync Database ====='
echo ''
sudo pacman -Syy

echo ''
echo '====== Clean Pacman Cache ====='
echo ''
echo ' Careful this eliminates the possibility of using downgrade '
echo ''
sudo pacman -Scc

echo ''
echo '====== Removing unused packages ====='
echo ''
sudo pacman -Rns $(pacman -Qtdq)

echo ''
echo '====== Update mlocate database ====='
echo ''
sudo updatedb
echo ''

echo ''
echo '====== Update mlocate database ====='
echo ''
sudo journalctl --vacuum-size=5M
echo ''

echo ''
echo '====== rmshit ====='
echo ''
if [  -f /etc/init.d/shittyshit.py ]; then
   python /etc/init.d/shittyshit.py 
else
echo "shittyshit.py not found!"
echo 'Downloading....'
echo ''
sudo curl -O https://raw.githubusercontent.com/TheFenrisLycaon/Arch-Cleaner/master/shittyshit.py 
   python shittyshit.py 
fi
