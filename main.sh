#! /bin/bash
numbers=(first second third)

for((i=0;i< 3;i++))
do
    echo "Enter ${numbers[i]} number"
    read -r nums[i]
done
  
echo ${nums[*]}

x=0
while [ $x -le 3 ];
do
    for((y = 0; y<3-x-1; y++))
    do
        if [ ${nums[y]} -gt ${nums[$((y+1))]} ]
        then
            tmp=${nums[y]}
            nums[$y]=${nums[$((y+1))]}  
            nums[$((y+1))]=$tmp
        fi
    done
    x=$(( $x + 1 ))
done
  
echo "Sorting..."
printf '%s ' "${nums[*]}"