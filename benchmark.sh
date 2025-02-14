#! /bin/bash
git clone https://github.com/JuanDT24/tests.git tests

echo "Benchmark results" 
echo "-----------------"
for lang in tests/*; do
    echo "$lang:"
    cat "./$lang/${lang}_output.txt"
    echo "-----