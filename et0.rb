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
  @monthly_base = CSV.read("public/monthly_base.csv")
  (0..@monthly_base.length-1).each do |row|
    @january_in_California = @monthly_base[row][7].to_f if @monthly_base[row][0] == "CA" && @monthly_base[row][3].to_i == 1
    @january_in_Ohio = @monthly_base[row][7].to_f if @monthly_base[row][0] == "OH" && @monthly_base[row][3].to_i == 1
  end
  erb :what_is_evapotranspiration
end

get '/how-is-evapotranspiration-used' do
  erb :how_is_evapotranspiration_used
end
