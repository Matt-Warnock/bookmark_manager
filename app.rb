# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions, :method_override

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/bookmarks/new' do
    erb :new
  end

  post '/bookmarks' do
    Bookmark.create(url: params['url'], title: params[:title])

    redirect '/bookmarks'
  end

  delete '/bookmarks' do
    
    Bookmark.delete(id: params['delete'])

    redirect '/bookmarks'
  end
end
