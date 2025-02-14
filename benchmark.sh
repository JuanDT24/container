#! /bin/bash
git clone https://github.com/JuanDT24/tests.git tests

echo "Benchmark results" 
echo "-----------------"
for lang in tests/*; do
    echo "$lang:"
    echo "${lang}_benchmark"
    docker build -t "${lang}_benchmark" "$lang"
    docker run --rm -v $(pwd):/mnt "${lang}_benchmark"
    cat "./$lang/output.txt"
    echo "----------"
done