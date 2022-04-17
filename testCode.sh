#!/bin/bash 

./runParser.sh 
sqlite3 ebay < create.sql 
sqlite3 ebay < load.txt 

for i in {1..1}
    do 
        sqlite3 ebay < query$i.sql
    done 

