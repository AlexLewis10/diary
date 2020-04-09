require 'pg'

def setup_test_database

  p "Setting up test database"

  connection = PG.connect(dbname: 'diary_manager_test')

  #clear the diary table in the test database
  connection.exec("TRUNCATE diary;")
end
