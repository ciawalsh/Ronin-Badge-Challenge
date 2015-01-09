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

  	# if @win == "rock"
  	# 	redirect "/win"
  	# else
  	# 	redirect "/lose"
  	# end

  	if @choice == params[:rock] && @win == "scissors"
  		redirect '/win'
  	elsif @choice == params[:rock] && @win == "paper"
  		redirect '/lose'
  	elsif @choice == params[:rock] && @win == "rock"
  		redirect '/draw'
  	elsif @choice == params[:paper] && @win == "scissors"
  		redirect '/lose'
  	elsif @choice == params[:paper] && @win == "paper"
  		redirect '/draw'
  	elsif @choice == params[:paper] && @win == "rock"
  		redirect '/win'		
  	elsif @choice == params[:scissors] && @win == "scissors"
  		redirect '/draw'	
  	elsif @choice == params[:scissors] && @win == "paper"
  		redirect '/win'	
  	elsif @choice == params[:scissors] && @win == "rock"
  		redirect '/lose'
  	end
  end

  get '/win' do
  	erb :win
  end

  get '/lose' do
  	erb :lose
  end

  get '/draw' do
  	erb :draw
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
