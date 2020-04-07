require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/diary' do
    erb :diary
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
