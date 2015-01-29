require 'sinatra'
require_relative './model/inventory'

get '/' do
	# @search = params[:search]
	# if @search && @search.length > 0
	# 	@items = Inventory.search(@search)
	# else
	# 	@items = Inventory.all 
	# end
	# puts "search: #{@search}" you can search something and check your server to see if it comes up
  erb :home
end

get '/categories' do
  erb :categories
end

# get '/items/:id' do
#   @item = Inventory.find(params[:id].to_i)
#   erb :item
# end


get '/about' do
  erb :about
end
