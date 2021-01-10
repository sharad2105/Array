#!/bin/bash -x
arr=(20 2 12 23 21)
echo ${arr[@]} 

for ((i = 0; i<5; i++)) 
do
	
	for((j = 0; j<5-i-1; j++)) 
	do
	
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
		then 
			temp=${arr[j]} 
			arr[$j]=${arr[$((j+1))]} 
			arr[$((j+1))]=$temp 
		fi
	done
done

echo "Array in sorted order :"
echo ${arr[*]}
echo "Second smallest element is "${arr[1]} 
echo "Second largest number is "${arr[$i-2]}
