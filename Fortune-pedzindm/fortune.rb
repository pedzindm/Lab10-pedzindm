require 'sinatra/base'
require 'haml'
require 'thin'



class Fortune < Sinatra::Base

get '/fortune/random/?' do
	@fortune = $fortunes[rand($fortunes.size)]
	haml :fortune
end

get '/fortune/get/?' do |fid|
	
	@fortune = $fortunes[[:fid.to_i]]
	haml :fortune
end

require 'fortunedata'
end
