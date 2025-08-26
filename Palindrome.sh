is_palindrome() {
    read -p "Enter a string: " str
    local reversed=""
    local len=${#str}
    local i=$((len - 1))

    while [ $i -ge 0 ]; do
        reversed="${reversed}${str:$i:1}"
        ((i--))
    done

    if [ "$str" == "$reversed" ]; then
        echo "Palindrome"
    else
        echo "Not a palindrome"
    fi
}
 reversed+="${str:$i:1}"
is_palindrome
# Example usage: ./Palindrome.sh