feature 'viewing bookmarks' do

  before(:each) do
    connection = Bookmark.set_env
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
  end

  scenario 'it shows me all the bookmarks' do
    visit('/bookmark_list')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end

end
