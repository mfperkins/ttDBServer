require 'sinatra/base'

class ttDBServer < Sinatra::Base
  get '/' do
    'Hello ttDBServer!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
