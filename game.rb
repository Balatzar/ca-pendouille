def game(params) #mise en place de la fonction game qui appelle un argument
	@title = "Jouez !" # précise le titre qui sera affiché dans la vue game.erb (titre précisé dans le layout.erb)
	@word = params[:word] #l'argument params est mis dans une variable @word qui sera appelée dans la vue game.erb
end