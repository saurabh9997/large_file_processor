# large_file_processor

## Steps
1) Clone The repo https://github.com/saurabh9997/large_file_processor.git
2) create image :- docker build -t processor .
3) run the docker container :- docker run -p 5000:5000 processor
4) Hit The Api using curl or postman

if not worked using docker.
1) update the config.json in code/database with db credentials
2) cd large_file_processor
3) python3 api.py


## Details of all the tables and their schema
We have Made only one table under product schema named products.
Have Used the column name as name(varchar), sku(varchar), description(varchar).
 sku as a primary key as expected
We just need to run the /folder-upload api to recreate the table.


## What is done from “Points to achieve” and number of entries in all your tables with sample 10 rows from each
Have tried to cover everything which is mentioned in “Points to achieve”

## What would you improve if given more days
1) Faced some issues in docker setup for the project
2) will try to implement pyspark to check if it works better in the edge cases
3) Will write some test cases to get more accurate results
4) more ways using sharding, partitioning to get the result faster. Have tried partitioning and got the better result then the current we are getting(update time is fast)
