feature 'add bookmark' do
  scenario 'it adds a bookmark' do
    visit('/')
    fill_in 'new_bookmark', with: 'http:www.youtube.com'
    click_button "Add Bookmark"
    expect(page).to have_content('http:www.youtube.com')
  end
end
