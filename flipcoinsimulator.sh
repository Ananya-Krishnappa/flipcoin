#!/bin/bash
headcount=0
tailcount=0
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
done
