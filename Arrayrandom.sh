#!/bin/bash -x

for (( counter=0; counter<10; counter++ ))
do
	NumGenerator[((counter))]=$((100+RANDOM%900))
done
echo ${NumGenerator[@]}


if [ "${#NumGenerator[@]}" -lt 2 ]
then
  echo Incoming array is not large enough >&2
  exit 1
fi

largest=${NumGenerator[0]}
secondGreatest='unset'

for((i=1; i < ${#NumGenerator[@]}; i++))
do
  if [[ ${NumGenerator[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${NumGenerator[i]}
  elif (( ${NumGenerator[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]];
 }
  then
    secondGreatest=${NumGenerator[i]}
  fi
done

echo "secondGreatest = $secondGreatest"


if [ "${#NumGenerator[@]}" -lt 2 ]
then
  echo Incoming array is not large enough >&2
  exit 1
fi

smallest=${NumGenerator[0]}
secondsmallest='unset'

for((i=1; i < ${#NumGenerator[@]}; i++))
do
  if [[ ${NumGenerator[i]} < $smallest ]]
  then
    secondsmallest=$smallest
    smallest=${NumGenerator[i]}
  elif (( ${NumGenerator[i]} != $smallest )) && { [[ "$secondsmallest" = "unset" ]] || [[ ${array[i]} > $secondsmallest ]];
 }
  then
    secondsmallest=${NumGenerator[i]}
  fi
done

echo "secondsmallest = $secondsmallest"
