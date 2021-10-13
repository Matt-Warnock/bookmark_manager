feature 'creating a bookmark' do
  scenario 'adding bookmark too bookmark_manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://example.org')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href: 'http://example.org')
  end
end
