require 'pg'
class Bookmark
#self is a new instance of a class
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url']}
    
  end
end