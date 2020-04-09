# Diary App
An simple web app that allows you to keep a daily diary


## Database setup

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE diary_manager;
3. Connect to the database using the pqsl command \c diary_manager;
4. Run the query we have saved in the file 01_create_diary_table.sql

### Test environment DB
1. admin=# CREATE DATABASE "diary_manager_test";
2. admin=# CREATE TABLE diary(id SERIAL PRIMARY KEY, entry VARCHAR(60));



## User Stories
```
As a user
So that I can keep a daily diary
I want to be able to add a new Diary Entry

As a user
So that I can identify my entry in future
I want to give each Diary Entry a title

As a user
So that I can browse my previous entries
I want to see a list of Diary Entry Titles

As a user
So that I can read my previous entries
I want to click on a title to see the full Diary Entry

```
