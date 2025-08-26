count_vowels_consonants() {
    read -p "Enter a string: " str
    str=${str,,} # Convert to lowercase
    vowels=0
    consonants=0

     n=${#str}

    for (( i=0; i<n; i++ )); do
        ch="${str:$i:1}"
        if [[ "$ch" =~ [aeiou] ]]; then
            ((vowels++))
        elif [[ "$ch" =~ [a-z] ]]; then
            ((consonants++))
        fi
    done

    echo "Vowels: $vowels"
    echo "Consonants: $consonants"
}
count_vowels_consonants