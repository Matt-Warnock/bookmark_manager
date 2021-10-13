feature 'creating a bookmark' do
  scenario 'adding bookmark too bookmark_manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://example.org')
    click_button('Submit')

    expect(page).to have_content 'http://example.org'
  end
end
