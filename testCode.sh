#!/bin/bash 

# Runs the parser to create .dat files 
./runParser.sh 

# Creates the schema for the tables 
sqlite3 ebay < create.sql 

# Loads the .dat files into the databse 
sqlite3 ebay < load.txt 

# Runs the queries and prints output to console
for i in {1..1}
    do 
        sqlite3 ebay < query$i.sql
    done 

