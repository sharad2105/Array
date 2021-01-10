#!/bin/bash -x
max=0
for (( counter=0; counter<10; counter++ ))
do
NumberGenerator[((counter))]=$((100+RANDOM%999))
done
echo ${NumberGenerator[@]}
for (( i=1; i<n; i++ ))
do
	if [ ${NumberGenerator[i]} > $max ]
	then
		$max=${NumberGenerator[i]}
	fi
done
echo "gretest number " $max
#secondLowest=$( printf '%s\n' "${NumberGenerator[@]}" | tail -2 | head -1 )
#secondGretest=$( printf '%s\n' "${NumberGenerator[@]}" | head -3 | tail -1 )
