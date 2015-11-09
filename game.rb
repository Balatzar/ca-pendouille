require 'yaml/store'


def game(word) #initialisation de la fonction game qui prend un argument
	@title = "Jouez !" #précise le titre qui sera affiché dans la vue game.erb (titre précisé dans le layout.erb)
	@store = YAML::Store.new 'pendu.yml'
	@store.transaction do
		@store['pendu']['word'] = word
		@word = @store['pendu']['word'] #dans la variable (paramètre de notre route post) params on récupère une propriété qui sera stocké dans une variable @word(@=> )
	end
end

def ingame(char)
	@title = "En jeu !"
	@store['pendu']['char'] ||= char
	@char = @store.transaction { @store['pendu']['char'] }
end