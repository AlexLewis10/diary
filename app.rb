require 'sinatra/base'
require 'add_entry'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/diary' do
    new = Diary.new 
    @diary = new.add
    erb :diary
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
