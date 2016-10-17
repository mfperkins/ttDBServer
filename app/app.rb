require 'sinatra/base'
require_relative './models/pairs'

class TTDBServer < Sinatra::Base

  set :sessions, true
  set :session_secret, 'super secret'

  helpers do
    def current_pairs
      session[:current_pairs] || Pairs.new
    end
  end

  get '/' do
    "Hello World #{params[:name]}".strip
  end

  get '/get' do
    @current_pairs = current_pairs
    key = params[:key]
    if @current_pairs.first(key) != nil
      "#{@current_pairs.first(key)}"
    else
      "Sorry, we don't have that key-value pair stored"
    end
  end

  get '/set*' do
    @current_pairs = current_pairs
    temp_object = params.first
    @current_pairs.create(temp_object[0],temp_object[1])
    session[:current_pairs] = @current_pairs
    puts @current_pairs.get_all_pairs
    "#{@current_pairs.get_all_pairs}"
  end

  run! if app_file == $0
end
