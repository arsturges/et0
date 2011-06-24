require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end
