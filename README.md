1.command to create migrate folder:
  -> migrate create -ext sql -dir migrations -seq init

2.migrate folder has two files:
  -> up and down file we put the generated ,create table command in the up file

3.Database set up
  1. Go to dbdigram.io and write the schema
  2. after this export it as a mysql file
  3. open table plus and start a mysql instance
  4. create a database using the command : CREATE DATABASE ecom;
  5. open this database and paste the file generated from dbdiagram.io
  6. the tables will be created

4.Migrations folder
  1. In the up file put the create table commands
  2. In the down file put the drop table commands
  3. The order in which the tables get dropped is important
  4. drop the table which has a foreign key refernce first to avoid problems in the future

5.command to run migration up
  migrate -path migrations -database "mysql://root:password@tcp(localhost:3306)/testdb" up


