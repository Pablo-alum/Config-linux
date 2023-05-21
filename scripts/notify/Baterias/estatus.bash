#! /bin/bash

power=$(cat /sys/class/power_supply/BAT0/status)

while true; do
  actual=$(cat /sys/class/power_supply/BAT0/status)

  if [ $actual != $power ]; then
     power=$actual
		 if [ $actual =  Discharging ];  then
		 		notify-send -t 2500 "Descargando" 
		 elif [ $actual = Charging ]; then
				notify-send -t 2500 "Caragando" 
		 else
			 notify-send -t 8500 "Carga completa"
		 fi
  fi
done

