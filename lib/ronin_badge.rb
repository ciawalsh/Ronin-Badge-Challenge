require 'sinatra/base'

class Ronin_Badge < Sinatra::Base

  enable :sessions

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
    session[:computer] = ["rock", "paper", "scissors"].sample

  	if @choice == params[:rock] && session[:computer] == "scissors"
  		redirect '/win'
  	elsif @choice == params[:rock] && session[:computer] == "paper"
  		redirect '/lose'
  	elsif @choice == params[:rock] && session[:computer] == "rock"
  		redirect '/draw'
  	elsif @choice == params[:paper] && session[:computer] == "scissors"
  		redirect '/lose'
  	elsif @choice == params[:paper] && session[:computer] == "paper"
  		redirect '/draw'
  	elsif @choice == params[:paper] && session[:computer] == "rock"
  		redirect '/win'		
  	elsif @choice == params[:scissors] && session[:computer] == "scissors"
  		redirect '/draw'	
  	elsif @choice == params[:scissors] && session[:computer] == "paper"
  		redirect '/win'	
  	elsif @choice == params[:scissors] && session[:computer] == "rock"
  		redirect '/lose'
  	end
  end

  get '/win' do
    @computer = session[:computer]
  	erb :win
  end

  get '/lose' do
    @computer = session[:computer]
  	erb :lose
  end

  get '/draw' do
    @computer = session[:computer]
  	erb :draw
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
