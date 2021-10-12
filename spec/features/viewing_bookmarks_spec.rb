feature 'Viewing bookmarks' do
  scenario 'visiting /bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'http://www.google.com'
  end
end
