require 'sinatra'

get '/' do
	@title = "Coucou !"
	erb :index
end