char_frequency() {
    read -p "Enter a string: " str
    declare -A freq
    n=${#str}
    for (( i=0; i<n; i++ )); do
        ch="${str:$i:1}"
        if [[ "$ch" =~ [a-zA-Z] ]]; then
            freq["$ch"]=$((freq["$ch"] + 1))
        fi
    done

    echo "Character Frequencies:"
    for ch in "${!freq[@]}"; do
        echo "$ch : ${freq[$ch]}"
    done
}
char_frequency
