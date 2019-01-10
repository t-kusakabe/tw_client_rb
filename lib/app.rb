require 'sinatra'
require 'sinatra/reloader'
require 'dotenv'
require 'twitter'
require 'pry'

Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

user = client.user('shunn_93')

get '/' do
  p user.attrs.to_json
end
