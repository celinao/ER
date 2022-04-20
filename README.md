# How to run the code 

- Remove the ebay database if it exists  

rm -rf ebay

-  Runs the parser to create .dat files  

./runParser.sh 

-  Creates the schema for the tables  

sqlite3 ebay < create.sql 

-  Loads the .dat files into the databse  

sqlite3 ebay < load.txt 

-  Runs the 7 queries and prints output to console  

for i in {1..7}
    do 
        sqlite3 ebay < query$i.sql
    done 

**Alternatively, You can run .testCode.sh** 