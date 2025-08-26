reverse_array() {
    echo "Enter array elements separated by space:"
    read -a arr

    n=${#arr[@]}
    i=0
    j=$((n - 1))

    echo "Original array: ${arr[@]}"


    while [ $i -lt $j ]; do
        
        temp=${arr[$i]}
        arr[$i]=${arr[$j]}
        arr[$j]=$temp

        ((i++))
        ((j--))
    done

    if [ $n -eq 0 ]; then
        echo " Empty array"
    elif [ $n -eq 1 ]; then
        echo "Only one element: ${arr[@]}"
    else
        echo "Reversed array: ${arr[@]}"
    fi
}

reverse_array
