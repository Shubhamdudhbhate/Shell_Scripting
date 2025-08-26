# echo "Enter three numbers:"
# read a b c

# if [ $a -ge $b ] && [ $a -ge $c ]; then
#     echo "Greatest number is: $a"
# elif [ $b -ge $a ] && [ $b -ge $c ]; then
#     echo "Greatest number is: $b"
# else
#     echo "Greatest number is: $c"
# fi

find_max() {
    local arr=("$@")
    local max=${arr[0]}

    for num in "${arr[@]}"; do
        if (( num > max )); then
            max=$num
        fi
    done

    echo "Maximum element: $max"
}


find_max "$@"
# Example usage: ./max.sh 1 2 3 4 5



