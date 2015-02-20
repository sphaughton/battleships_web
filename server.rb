require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/cell'
require_relative 'lib/board'

class BattleShips < Sinatra::Base

  game = Game.new

  enable :sessions

  set :views, Proc.new { File.join(root, "views")}

  grid = Array.new(10) { Array.new(10) {'~'} }

  get '/' do
    erb :index
  end

  post '/' do
    if params[:player_name].empty?
      @name = "Please tell me your name!"
      erb :index
    else
      player = Player.new(params[:player_name])
      session[:me] = player
      game.add_player(player)
      @name = session[:me].name
      erb :newgame
    end
  end

  get '/newgame' do
    erb :newgame
  end

  post '/newgame' do
    erb :newgame
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
