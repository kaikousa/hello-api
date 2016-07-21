require 'sinatra'

class App < Sinatra::Application

  get '/' do
    "Hello World!"
  end

  get '/status' do
    "ok"
  end

end
