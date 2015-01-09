require 'sinatra/base'

class Ronin_Badge < Sinatra::Base
  
  get '/' do
    html :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
