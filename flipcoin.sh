#!/bin/bash

head=0;
tail=0;
num=10;

for (( i=0; i<=$num; i++ ))
do
        flip=$((RANDOM%2))
        if [ $flip -eq 1 ]
        then
                ((head++))
        else
                ((tail++))
        fi
done

echo "Times head was flipped : " $head
echo "Times tail was flipped : " $tail
