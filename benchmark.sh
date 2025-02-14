#! /bin/bash
git clone https://github.com/JuanDT24/Fibonacci.git tests

echo "" > results.txt
echo "Benchmark results" 
echo "-----------------"
for lang in tests/*; do
     lang_name=$(basename "$lang")
        echo "Ejecutando $lang_name..."

        docker build -t "${lang_name}_benchmark" "$lang"

        TIME_OUTPUT=$(docker run --rm "${lang_name}_benchmark")

        echo "$lang_name: $TIME_OUTPUT" >> results.txt
        echo "#$TIME_OUTPUT"
done

cat results.txt