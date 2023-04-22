# frozen_string_literal: true

require 'sinatra'

# Main application
class App < Sinatra::Application
  def json_body
    request.body.rewind
    body = request.body.read

    return JSON.parse(body) unless body.empty?

    {}
  end

  get '/' do
    'Hello World!'
  end

  get '/status' do
    'ok'
  end

  get '/echo/:what' do
    "Echo #{params['what']}"
  end

  post '/operation' do
    data = json_body

    # Simulate a long running operation
    sleep_duration = data['sleep'] || 0
    sleep(sleep_duration)

    content_type :json
    {
      "msg": "Slept #{sleep_duration} seconds",
      "echo": data['echo'] || 'No echo defined'
    }.to_json
  end
end
