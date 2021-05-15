#!/bin/bash
headcount=0
tailcount=0
n=0
while [ $n -le 20 ]
do
	 n=$((n+1))
    Flip=$(($(($RANDOM%10))%2))
    if [ $Flip -eq 1 ]
    then
        echo "heads"
        headcount=$((headcount+1))
    else
        echo "tails"
        tailcount=$((tailcount+1))
    fi
done
echo "head count is" $headcount "and tail count is" $tailcount

