require 'sinatra/base'

class BattleShips < Sinatra::Base

    set :views, Proc.new { File.join(root, "..", "views")}

  get '/' do
    erb :index
  end

  post '/' do
    @name = params[:name]
    erb :newgame
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
