require 'sinatra/base'

class Battle < Sinatra::Base
#  get '/' do
#    'Testing infrastructure working!'
#  end

  # start the server if ruby file executed directly
#  run! if app_file == $
  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end
end