require 'sinatra'
require 'erb'
require 'csv'

get '/' do
  file = "public/monthly_base.csv"
  @monthly_base = CSV.read(file)
  header = @monthly_base.shift
  @number_of_regions = @monthly_base.length/12
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
