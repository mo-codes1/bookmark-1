require 'pg'

p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark_managerr_test')


connection.exec("TRUNCATE bookmarks;")