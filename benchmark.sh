#! /bin/bash
git clone https://github.com/JuanDT24/tests.git tests

echo "Benchmark results" 
echo "-----------------"
for lang in tests/*; do
    echo "$lang:"
    echo "${lang_name}_benchmark"
    docker build -t "${lang_name}_benchmark" "$lang"
    TIME_OUTPUT=$(docker run --rm "${lang_name}_benchmark")
    cat "./$lang/output.txt"
    echo "----------"
done