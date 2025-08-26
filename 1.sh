#!/bin/bash

# 1. ${var}
name="Shubham"
echo "1. Hello, ${name}"   # → Hello, Shubham

# 2. ${var:-word}
unset city
echo "2. City: ${city:-Mumbai}"  # → City: Mumbai
echo "2. City after :- : $city"  # Still unset → empty

# 3. ${var:=word}
echo "3. Country: ${country:=India}"  # → Country: India
echo "3. Country after := : $country" # Now set to India

# 4. ${var:?message}
# Uncomment to test error:
# echo "4. ${age:?Error: age is not set}"  # If age is unset, prints error and exits

age=21
echo "4. Age is: ${age:?Error: age not set}"  # → Age is: 21

# 5. ${var:+word}
echo "5. Bonus: ${name:+You get a bonus!}"   # → You get a bonus! (name is set)
unset name
echo "5. Bonus: ${name:+You get a bonus!}"   # → (nothing, name is unset)






#_______________________________________________________________________________________________________





#!/bin/bash

echo -e "1. Backslash (\\\\) → This is a backslash: \\\\"             # Output: This is a backslash: \
echo -e "2. Alert (\\a) → Bell\aSound"                               # Output: Triggers a beep 🔔 (if sound is on)
echo -e "3. Backspace (\\b) → ABC\bD"                                # Output: ABD (C is removed)
echo -e "4. Suppress newline (\\c) → Hello\cWorld"                   # Output: Hello (World is ignored, no newline)
echo -e "\n5. Form feed (\\f) → Line1\fLine2"                        # Output: Line1 Line2 with form feed (↦ may be invisible)
echo -e "6. Newline (\\n) → Line1\nLine2"                            # Output: Line1 (newline) Line2
echo -e "7. Carriage return (\\r) → 12345\rAB"                       # Output: AB345 (12 overwritten by AB)
echo -e "8. Horizontal tab (\\t) → Name:\tShubham"                   # Output: Name:    Shubham
echo -e "9. Vertical tab (\\v) → Item1\vItem2"                       # Output: Item1 (vertical space) Item2

# Special characters
echo -e "\n10. Dollar sign (\\\$) → I have \$1000"                   # Output: I have $1000
echo -e "11. Backtick (\`) escaped → \`date\`"                       # Output: `date` (not executed)
echo -e "12. Single quote (\\') → It\'s fine"                        # Output: It's fine
echo -e "13. Double quote (\\\") → She said, \"Hi!\""               # Output: She said, "Hi!"
echo -e "14. Double backslash (\\\\) → C:\\\\Path"                  # Output: C:\\Path

