#/bin/bash

cikti=`synclient | grep Touchpad `
cikti=`cut -d'=' -f2 <<< $cikti`

cikti2="TouchpadOff = 0"
cikti2=`cut -d'=' -f2 <<< $cikti2`

if [ $cikti -eq $cikti2 ];
then
synclient TouchpadOff=1
else
synclient TouchpadOff=0
fi
