ENV['RACK_ENV'] = 'test'

require './app/app'
require_relative 'spec_helper'
require 'rack/test'

describe 'Server tests' do
  include Rack::Test::Methods

  def app
    TTDBServer
  end

  it "stores a key-value pair from the query string at '/set'" do
    get '/set?myDog=Beagle'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('{"myDog"=>"Beagle"}')
  end

  it "returns a value '/get' for a given key" do
    get '/set?myDog=Beagle'
    get '/get?key=myDog'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Beagle')
  end

end
