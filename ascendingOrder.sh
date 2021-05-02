#! /bin/bash
numbers=(first second third)

for((i=0;i< 3;i++))
do
    echo "Enter ${numbers[i]} number"
    read -r nums[i]
done
  
echo ${nums[*]}


for ((x = 0; x<3; x++))
do
    for((y = 0; y<3-x-1; y++))
    do
        if [ ${nums[y]} -gt ${nums[$((y+1))]} ]
        then
            temp=${nums[y]}
            nums[$y]=${nums[$((y+1))]}  
            nums[$((y+1))]=$temp
        fi
    done
done
  
echo "Sorting..."
printf '%s ' "${nums[*]}"