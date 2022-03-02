#!/bin/sh -x

for((i=1;i<=50;i++))
do
	x=$((RANDOM%12+1))
	mon[$i]=$x
done

echo ${mon[@]}

#for i in ${mon[@]}
#do
#	echo  "individuals have birthday in ${#mon[@]} month"
#done

