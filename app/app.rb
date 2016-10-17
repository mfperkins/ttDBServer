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
    "#{@current_pairs.first(key)}"
  end

  get '/set*' do
    @current_pairs = current_pairs
    @current_pairs.create(params.first[0],params.first[1])
    session[:current_pairs] = @current_pairs
    "#{@current_pairs.get_all_pairs}"
  end

  run! if app_file == $0
end
