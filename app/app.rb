require 'sinatra/base'

class TTDBServer < Sinatra::Base
  get '/' do
    "Hello World #{params[:name]}".strip
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
