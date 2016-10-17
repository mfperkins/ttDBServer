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
end
