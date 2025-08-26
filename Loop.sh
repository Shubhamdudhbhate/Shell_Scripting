check_prime() {
    echo "Enter a number to check if it's prime:"
    read num

    if [ "$num" -lt 2 ]; then
        echo "$num is ❌ Not Prime (less than 2)"
        return
    fi

    flag=1
    i=2

    # WHILE loop to check divisibility
    while [ $i -le $((num / 2)) ]; do
        if [ $((num % i)) -eq 0 ]; then
            flag=0
            break
        fi
        ((i++))
    done

    # IF-ELIF-ELSE to print result
    if [ $flag -eq 1 ]; then
        echo "$num is ✅ Prime"
    else
        echo "$num is ❌ Not Prime"
    fi
}

check_prime
