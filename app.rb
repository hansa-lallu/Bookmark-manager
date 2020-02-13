require 'sinatra/base'
require './lib/bookmark'
require 'pg'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Bookmark Manager'
    erb :index
  end

  post '/add_bookmark' do
    Bookmark.add_bookmark(params[:new_bookmark])
    redirect '/bookmark_list'
  end

  get '/bookmark_list' do
    ENV
    @list = Bookmark.all
    erb :bookmark_list
  end
  #  run! if app_file == $0
end
