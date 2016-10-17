ENV['RACK_ENV'] = 'test'

require './app/app'
require_relative 'spec_helper'
require 'rack/test'

describe 'TTDBServer' do
  include Rack::Test::Methods

  def app
    TTDBServer
  end

  it "says hello" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello World')
  end

  it "stores a key-value pair at '/set'" do
    get '/set?myDog=Beagle'
    puts last_response
    expect(last_response).to be_ok
    expect(last_response.body).to eq('{Dog: Beagle}')
  end

  it "returns a value '/get'" do
    get '/get?key=myDog'
    puts last_response
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Beagle')
  end

end
