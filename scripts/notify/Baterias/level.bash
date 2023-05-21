battery_level=`acpi -b | grep -oP '[0-9]+(?=%)'`
notify-send "El nivel de bateria es $battery_level"

