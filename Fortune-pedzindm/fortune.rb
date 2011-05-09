require 'sinatra/base'
require 'haml'
require 'thin'



class Fortune < Sinatra::Base

get '/fortune/random/?' do
	@fortune = $fortunes[rand($fortunes.size)]
	haml :fortune
end

get '/fortune/get/:fid' do
	@fortune = params[:fid]
end

require 'fortunedata'
end
