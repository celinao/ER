#!/bin/bash 

rm -f datFiles/categories.dat 
rm -f datFiles/items.dat 

# Runs the parser on one json file. 
python local_parser.py ebay_data/items-0.json 

# Runs parser on all json files (run once small version is debugged)
# python local_parser.py ebay_data/items-*.json 

