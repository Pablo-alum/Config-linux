volume_info=$(amixer  get Master) 

volume=$(echo "$volume_info" | grep -oE '[0-9]+%' | head -n 1)

amixer set Master 5%-
notify-send "EL nivel de sonido es $volume  " 
