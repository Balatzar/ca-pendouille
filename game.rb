def game(params) #initialisation de la fonction game qui prend un argument
	@title = "Jouez !" #précise le titre qui sera affiché dans la vue game.erb (titre précisé dans le layout.erb)
	@word = params[:word] #dans la variable (paramètre de notre route post) params on récupère une propriété qui sera stocké dans une variable @word(@=> )
end