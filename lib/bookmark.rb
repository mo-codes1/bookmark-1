require 'pg'
class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_managerr_test')
    else
      connection = PG.connect(dbname: 'bookmark_managerr')
    end
     bookmarks = connection.exec('SELECT * FROM bookmarks;')
     bookmarks.map { |bookmark| bookmark['url'] }
   end

   def self.create(url:)
     if ENV['ENVIRONMENT'] == 'test'
       connection = PG.connect(dbname: 'bookmark_managerr_test')
     else
       connection = PG.connect(dbname: 'bookmark_managerr')
     end

     connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
   end
 end