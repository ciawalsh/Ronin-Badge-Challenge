require 'sinatra/base'

class Ronin_Badge < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/' do
  	erb :index
  	@name = params[:name]
  end

  post '/new_game' do
  	@name = params[:name]
  	erb :new_game
  end

  get '/calculate' do
  	@choice = params[:rock] || params[:paper] || params[:scissors]
		@win = ["rock", "paper", "scissors"].sample

  	if @win == "rock"
  		redirect "/win"
  	else
  		redirect "/lose"
  	end

  end

  get '/win' do
  	erb :win
  end

  get '/lose' do
  	erb :lose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
