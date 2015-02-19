require 'sinatra/base'

class BattleShips < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views")}

  get '/' do
    @name = params[:name]
    erb :index
  end

  post '/' do
    if params[:name].empty?
      @name = "You haven't told me your name yet!"
      erb :index
    else
      erb :newgame
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
