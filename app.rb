require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World'
  end

  get '/bookmarks' do
    @bookmarks = [
              "http://www.makersacademy.com",
              "http://www.destroyallsoftware.com",
              "http://www.google.com"
             ]
  
    erb :'bookmarks'
  end

  run! if app_file == $0
end