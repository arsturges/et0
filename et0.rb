require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/calculation' do
  erb :calculation
end

get '/what-is-evapotranspiration' do
  erb :what_is_evapotranspiration
end
