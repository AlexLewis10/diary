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

  get '/diary/new' do
    erb :'diary/new'
  end

  post "/diary" do
    Diary.create(diary: params['entry'])
    redirect '/diary/index'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
