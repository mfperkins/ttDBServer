require 'sinatra/base'

class TTDBServer < Sinatra::Base

  set :sessions, true
  set :session_secret, 'super secret'


  get '/' do
    "Hello World #{params[:name]}".strip
  end

  get '/get' do
    key = params[:key]
    @object = { 'myDog' => 'Beagle' }
    if @object.has_key?(key)
      value = @object[key]
      "#{value}"
    end
  end

  get '/set' do |somekey, somevalue|
    "somekey somevalue"
    " #{params.inspect}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
