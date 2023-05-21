#!/bin/bash                                                          

# Battery level warning script

battery_level=`acpi -b | grep -oP '[0-9]+(?=%)'`

if [[ $battery_level -le 15  ]]; then
		notify-send -t 82500 -u critical "Nivel de bateria critica" "El nivel de bateria es $battery_level"

fi

