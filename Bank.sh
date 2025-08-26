balance=1000  # Starting balance

show_menu() {
    echo "============================"
    echo "       BANKING SYSTEM"
    echo "============================"
    echo "1. Show Balance"
    echo "2. Credit (Deposit)"
    echo "3. Debit (Withdraw)"
    echo "4. Exit"
    echo "============================"
}

show_balance() {
    echo " Your Current Balance is: Rs.$balance"
}

credit() {
    echo "Enter amount to credit:"
    read amount

    if [ "$amount" -gt 0 ]; then
        balance=$(( balance + amount ))
        echo " Rs.$amount has been credited."
        show_balance
    else
        echo " Please enter a valid amount!"
    fi
}

debit() {
    echo "Enter amount to debit:"
    read amount

    if [ "$amount" -gt 0 ] && [ "$amount" -le "$balance" ]; then
        balance=$(( balance - amount ))
        echo "Rs.$amount has been debited."
        show_balance
    else
        echo " Insufficient balance or invalid amount!"
    fi
}

# Main loop
while true; do
    show_menu
    echo -n "Enter your choice (1-4): "
    read choice

    case $choice in
        1) show_balance ;;
        2) credit ;;
        3) debit ;;
        4) echo "Thank you for using our banking system!"; exit 0 ;;
        *) echo " Invalid choice! Please enter 1-4." ;;
    esac

    echo ""  # Blank line for readability
done
