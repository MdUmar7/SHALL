#!/bin/bash

# Read input
read -p "Enter Student English Marks: " english
read -p "Enter Student Hindi Marks: " hindi
read -p "Enter Student Math Marks: " math
read -p "Enter Student Science Marks: " science
read -p "Enter Student History Marks: " history

Sub=("English" "Hindi" "Math" "Science" "History")
marks30=30
dis=75
noOfSubPass=0
noOfdisMark=0

# English
if [ $english -ge $marks30 ]; then
    noOfSubPass=$((noOfSubPass+1))
    if [ $english -ge $dis ]; then
        noOfdisMark=$((noOfdisMark+1))
    fi
else
    echo "Compartment in English"
fi

# Hindi
if [ $hindi -ge $marks30 ]; then
    noOfSubPass=$((noOfSubPass+1))
    if [ $hindi -ge $dis ]; then
        noOfdisMark=$((noOfdisMark+1))
    fi
else
    echo "Compartment in Hindi"
fi

# Math
if [ $math -ge $marks30 ]; then
    noOfSubPass=$((noOfSubPass+1))
    if [ $math -ge $dis ]; then
        noOfdisMark=$((noOfdisMark+1))
    fi
else
    echo "Compartment in Math"
fi

# Science
if [ $science -ge $marks30 ]; then
    noOfSubPass=$((noOfSubPass+1))
    if [ $science -ge $dis ]; then
        noOfdisMark=$((noOfdisMark+1))
    fi
else
    echo "Compartment in Science"
fi

# History
if [ $history -ge $marks30 ]; then
    noOfSubPass=$((noOfSubPass+1))
    if [ $history -ge $dis ]; then
        noOfdisMark=$((noOfdisMark+1))
    fi
else
    echo "Compartment in History"
fi

# Final Result
if [ $noOfSubPass -ge 3 ] && [ $noOfSubPass -lt 5 ]; then
    echo "Student passed in $noOfSubPass subjects"
elif [ $noOfSubPass -eq 5 ] && [ $noOfdisMark -ge 3 ]; then
    echo "Student passed with Distinction!"
else
    echo "Student failed (passed only $noOfSubPass subjects)"
    echo "Compartment in $((5 - noOfSubPass)) subjects"
fi
