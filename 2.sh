#!/bin/bash

# 1. Standard Output Redirection (overwrite)
echo "This is line 1" > output.txt

# 2. Append Output to File
echo "This is line 2" >> output.txt

# 3. Read Input from File
echo "Word count using input redirection:"
wc -w < output.txt

# 4. Save Error to a File
ls invalidfile 2> error.txt

# 5. Merge STDOUT and STDERR into one file
ls validfile invalidfile > both.txt 2>&1

# 6. Discard all output
echo "This won't be seen" > /dev/null

# 7. Discard both STDOUT and STDERR
ls invalidfile > /dev/null 2>&1

# 8. Here Document for wc
echo "Line count using here document:"
wc -l << EOF
Line A
Line B
Line C
EOF

# 9. Pipe (|) output from one command to another
echo "Using pipe to count number of .sh files:"
ls *.sh 2>/dev/null | wc -l

# 10. Redirect STDOUT to STDERR
echo "This is an error message" 1>&2

# Show final output file content
echo "Contents of output.txt:"
cat output.txt

echo "Contents of error.txt:"
cat error.txt
