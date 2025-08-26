reverse_array(){
    local arr=("$@")
    local len=${#arr[@]}
    local reversed=()

    for (( i=len-1; i>=0; i-- )); do
        reversed+=("${arr[i]}")
    done

    echo "${reversed[@]}"
}

input="1,2,3,4,5"
IFS=',' read -ra arr <<< "$input"
reverse_array "${arr[@]}"

# reverse_array 1 2 3 4 5 6 3 2 1 4 5 6 3 12 1 

