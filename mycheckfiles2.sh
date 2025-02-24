#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo -e  "\n#========================================================================================"
echo "Start times"
head -n 1 *.out

echo "End times"
tail -n 5 *.out

echo "#========================================================================================"
