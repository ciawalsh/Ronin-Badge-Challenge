require 'sinatra/base'
require_relative 'rps'

class Ronin_Badge < Sinatra::Base

  get '/' do
     erb :index
  end

  post '/' do
  	@name = params[:name]
    erb :index
  end

  post '/new_game' do
  	@name = params[:name]
  	erb :new_game
  end

  get '/calculate' do
    erb RockPaperScissors.play(params[:pick]).to_sym
  end

  get '/play_again' do
    session.clear ; redirect '/'
  end
end
