require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'bookmark_managerr_test')


  connection.exec("TRUNCATE bookmarks;")
end