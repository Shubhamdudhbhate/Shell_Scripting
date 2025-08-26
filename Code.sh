#!/bin/bash

# Function to sort an array passed as arguments
sort_array() {
    input=("$@")  # Convert all function arguments into array

    n=${#input[@]}  # Length of array

    # Bubble Sort
    for ((i = 0; i < n; i++)); do
        for ((j = 0; j < n - i - 1; j++)); do
            if [ ${input[j]} -gt ${input[j+1]} ]; then
                temp=${input[j]}
                input[j]=${input[j+1]}
                input[j+1]=$temp
            fi
        done
    done

    echo "Sorted array:"
    echo "${input[@]}"
}

# ==== MAIN ====

echo "Enter numbers separated by space:"
read -a user_array   # -a reads input into array

# Call function with user input array
sort_array "${user_array[@]}"

