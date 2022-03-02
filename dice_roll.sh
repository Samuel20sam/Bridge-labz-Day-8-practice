#!/bin/sh +x

i=0

a=0
b=0
c=0
d=0
e=0
f=0

while [[ $a -le 9 && $b -le 9 && $c -le 9 && $d -le 9 && $e -le 9 && $f -le 9 ]]
do
	Echo "Dice to roll"
	x=$((RANDOM%6+1))
	((i++))
	roll[$i]=$x

		case $x in
			1 )
				a=$(($a+1))
			;;
			2 )
				b=$(($b+1))
			;;
			3 )
				c=$(($c+1))
			;;
			4 )
				d=$(($d+1))
			;;
			5 )
				e=$(($e+1))
			;;
			6 )
				f=$(($f+1))
			;;
			*)
				echo "Error"
			;;
			esac
done

total_roll[1]=$a
total_roll[2]=$b
total_roll[3]=$c
total_roll[4]=$d
total_roll[5]=$e
total_roll[6]=$f

echo ${total_roll[@]}

min=${total_roll[1]}
max=${total_roll[1]}

for((i=1;i<6;i++))
do
	if [ ${total_roll[$i]} -lt $min ];
	then
		min=${total_roll[$i]}

	elif [ ${total_roll[$i]} -gt $max ];
	then
		max=${total_roll[$i]}
	fi
done

echo "Min repeatition is: $min"
echo "Max repeatition is: $max"

for i in "${!total_roll[@]}"
do
	echo "$i came ${total_roll[i]} times"
done

#echo ${total_roll[@]}

#echo "The number with minimum times is $x"
#echo "The number with maximum times is $y"
