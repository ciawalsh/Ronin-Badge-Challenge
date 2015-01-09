require 'sinatra/base'

class Ronin_Badge < Sinatra::Base
  
  get '/' do
    'Hello Charlie!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
