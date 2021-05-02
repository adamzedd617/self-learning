


# Static input of Array
numbers=(first second third)

for((i=0;i< 3;i++))
do
    echo "Enter ${numbers[i]} number"
    read -r arr[i]
done
  
echo "Array in original order"
echo ${arr[*]}
  
# Performing Bubble sort 
for ((i = 0; i<3; i++))
do
      
    for((j = 0; j<3-i-1; j++))
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
  
echo "Array in sorted order :"
printf '%s ' "${arr[*]}"