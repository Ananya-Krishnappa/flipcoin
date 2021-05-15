#!/bin/bash
headcount=0
tailcount=0
isThereATie=0
while [[ $headcount -lt 21 || $tailcount -lt 21 ]]
do
    Flip=$(($(($RANDOM%10))%2))
    if [ $Flip -eq 1 ]
    then
        echo "heads"
        headcount=$((headcount+1))
		  if [ $headcount -eq 21 ]
        then
				echo "head wins by" $(($headcount-$tailcount))
            break
        fi
    else
		  if [ $Flip -eq 0 ]
		  then
				echo "tails"
        		tailcount=$((tailcount+1))
		  		if [ $tailcount -eq 21 ]
            then
					echo "tail wins by" $(($tailcount-$headcount))
					break
				fi
        	fi
		fi
		if [ $headcount -eq $tailcount ]
		then
			isThereATie=1
		fi
		if [ $isThereATie -eq 1 ]
		then
			diff=$(($headcount-$tailcount))
			if [ $diff -eq 2 ]
			then
				echo "head is leading with 2 points. Headcount is" $headcount "Tailcount is" $tailcount
				break
			fi
			if [ $diff -eq -2 ]
			then
				 echo "tail is leading with 2 points. Headcount is" $headcount "Tailcount is" $tailcount
				 break
			fi
		fi
done
