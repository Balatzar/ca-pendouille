require 'sinatra' #Appelle fichier (fonctionaité sinatra) pour permettre fonctionnement de l'appli
require './game.rb' #Appelle le fichier game.rb

get '/' do #route permettant d'afficher la page index => http method
	@title = "Pendu !" #@title affiche le titre dans la page index.erb (titre précisé dans le layout.erb)
	erb :index #précision du template de vue à aller chercher avec le nom de celle-ci
end

get '/mode_duo' do
	@title = 'Mode duo !'
	erb :mode_duo
end

get '/mode_solo' do
	@title = 'Mode solo !'
	erb :mode_solo
end

post '/game' do #route permettant d'effectuer une action dans la page game
	game(params) #l'action effectuée va appeler la fonction "game" sur un argument qu'on lui aura donné
	erb :game #précision du template utilisé pour afficher le résultat dans la vue mentionnée
end