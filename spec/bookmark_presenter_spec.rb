require 'bookmark_presenter'

describe BookmarkPresenter do
  describe '.all' do
    it 'return a list of all bookmarks' do
      bookmarks = BookmarkPresenter.all
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end