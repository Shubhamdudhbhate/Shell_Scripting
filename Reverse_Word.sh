reverse_words() {
    read -p "Enter a sentence: " input
    IFS=' ' read -ra words <<< "$input"
    reversed_sentence=""

    for word in "${words[@]}"; do
        rev=""
        len=${#word}
        for (( i=len-1; i>=0; i-- )); do
            rev+="${word:$i:1}"
        done
        reversed_sentence+="$rev "
    done

    echo "Reversed words: $reversed_sentence"
}

reverse_words