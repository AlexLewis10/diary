require 'sinatra/base'
require './lib/diary'

class DiaryManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/diary/index' do

    @entries = Diary.all
    erb :'diary/index'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
