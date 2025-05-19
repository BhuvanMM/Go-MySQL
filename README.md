1.command to create migrate folder
  migrate create -ext sql -dir migrations -seq init

2.migrate folder has two files:
  up and down file we put the generated ,create table command in the up file

3.Database set up
  1. Go to dbdigram.io and write the schema
  2. after this export it as a mysql file
  3. open table plus and start a mysql instance
  4. create a database using the command : CREATE DATABASE ecom;
  5. open this database and paste the file generated from dbdiagram.io
  6. the tables will be craeted


