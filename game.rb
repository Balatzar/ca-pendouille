require 'yaml/store'


def game(word)
	@title = "Jouez !"
	@store = YAML::Store.new 'pendu.yml'
	@store.transaction do
		@store['pendu']['word'] = word
		@word = @store['pendu']['word']
	end
end

def ingame(char)
	@title = "En jeu !"
	@store['pendu']['char'] ||= char
	@char = @store.transaction { @store['pendu']['char'] }
end