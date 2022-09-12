
#!/bin/bash

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in
	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisoner"
                hp=20
                attack=4
		;;
	3)
		type="Prophet"
                hp=30
                attack=4
		;;
esac

echo "You have chosen the $type class. Your HP is $hp and your attack is $attack."


# first beast battle
beast=$(( $RANDOM % 2 ))

echo "Your first beast approaches. Prepare to battle."

sleep 1

echo "Pick a number between 0-1. (0/1)"

read tarnished

if [[ $beast == $tarnished && 47 > 23 ]]; then
	echo "Beast VANQUISHED!!! Congrats fellow tarnished"
else
	echo "You died"
	exit 1
fi

sleep 2

echo "Boss battle. Get scared. It's Margit. Pick a number between 0-9. (0-9)"

read tarnished

beast=$(( $RANDOM % 10 ))

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
	if [[ $USER == "michabre" && $tarnished > 0 ]]; then
		echo "Beast vanquished"
	fi
elif [[ $USER == "michabre" ]]; then
	echo "michabre wins."
	sleep 1
	echo "FATALITY..."
else
        echo "You died"
fi
