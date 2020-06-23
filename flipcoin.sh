#!/bin/bash

c_head=0;
c_tail=0;
count=0;
first=0;
last=1;
diff=$(( last-first+1 ))

while [[ $c_tail -lt 21 || $c_head -lt 21 ]]
do
	result=$((first + $(( $RANDOM%diff )) ))
	echo $result

        if [ $result -eq 1 ]
        then
                ((c_head++))
	echo "head" $c_head;
        else
                ((c_tail++))
	echo "tail" $c_tail;
        fi
((count++))

  if [ $c_head -eq 21 ]
  then
	echo "head won 21 times"
  exit
  elif [ $c_tail -eq 21 ]
  then
	echo "Tail won 21 times"
  exit
  elif [[ $c_head -eq 21 && $c_tail -eq 21 ]]
  then
	echo "Tie: Both tail and head win same times"
  exit
  fi
done
echo $count
