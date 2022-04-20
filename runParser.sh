#!/bin/bash 

rm -rf datFiles
mkdir datFiles

# Runs the parser on one json file. 
# python local_parser.py ebay_data/items-0.json 

# Runs parser on all json files (run once small version is debugged)
python local_parser.py ebay_data/items-*.json 

# Remove Unique Values
sort -u -o datFiles/items.dat datFiles/items.dat
sort -u -o datFiles/categories.dat datFiles/categories.dat
sort -u -o datFiles/bids.dat datFiles/bids.dat
sort -u -o datFiles/bidder.dat datFiles/bidder.dat
sort -u -o datFiles/seller.dat datFiles/seller.dat

