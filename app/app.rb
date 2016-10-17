require 'sinatra/base'

class TTDBServer < Sinatra::Base

  set :sessions, true
  set :session_secret, 'super secret'


  get '/' do
    "Hello World #{params[:name]}".strip
  end

  get '/get' do
    key = params[:key]
    @object = session[:object]
    if @object.has_key?(key)
      value = @object[key]
      "#{value}"
    end
  end

  get '/set*' do
    temp_object = params.first
    @object = {temp_object[0] => temp_object[1]}
    session[:object] = @object
    "#{@object}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
