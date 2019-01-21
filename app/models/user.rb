class User < ApplicationRecord

	has_secure_password

	has_many :favorites, dependent: :destroy
	has_many :pokemons, through: :favorites

	# Favorites a pokemon.
	def favorite(pokemon)
		favorites << pokemon
	end

	# Unfavorites a pokemon.
	def unfavorite(pokemon)
	    favorites.delete(pokemon)
	end

	# Returns true if the current user has favorited the pokemon.
	def favorited?(favorite_object)
	    favorites.exists?(user_id: favorite_object.user_id, pokemon_id: favorite_object.pokemon_id)
	end

end
