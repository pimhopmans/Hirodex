Rails.application.routes.draw do

	# The Pokémon routes
	resources :pokemons

	root 'pokemons#index'

	get '/pokemons/:id' => 'pokemons#show'

	# Sign up, login and logout routes
	resources :users

	get '/signup' => 'users#new'

	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'

	delete '/logout' => 'sessions#destroy'

	# Favorite routes
	resources :favorites

	post '/favorites' => 'favorites#create'
	delete '/favorites' => 'favorites#destroy'
	get '/favorites' => 'favorites#index'
	get '/favorites/:id' => 'pokemon#show'
	
end
