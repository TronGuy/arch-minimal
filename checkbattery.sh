	export DISPLAY=:0
	discharging=$(acpi -b | grep Discharging)
	level=$(acpi -b | cut -f 2 -d ',' | cut -f 1 -d '%')
	echo $level
	if [[ $discharging && $level  -lt 23 ]]; then
		dunstify -i battery "Bateria:$level, Coloque o notebook para carregar" --timeout=10000	
	fi

