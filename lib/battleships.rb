require 'sinatra/base'

class BattleShips < Sinatra::Base

    set :views, Proc.new { File.join(root, "..", "views")}

  get '/' do
    erb :index
  end

  get '/newgame' do
    @user = params[:name]
    erb :newgame
  end

  get '/battleshipstime' do
    erb :battleshipstime
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
