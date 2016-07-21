require './app'
require 'bundler'

Bundler.require

set :logging, :true

run App.new
