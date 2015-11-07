require 'sinatra'
require './game.rb'

get '/' do
	@title = "Pendu !"
	erb :index
end

get '/mode_duo' do
	@title = 'Mode duo !'
	erb :mode_duo
end

get '/mode_solo' do
	@title = 'Mode solo !'
	erb :mode_solo
end

post '/game' do
	game(params[:word])
	erb :game
end

post '/ingame' do
	ingame(params[:char])
	erb :ingame
end