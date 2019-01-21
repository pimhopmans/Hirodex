class FavoritesController < ApplicationController
	before_action :require_login
	respond_to :js, :html

	def index
		@user_favorites = Favorite.where(:user_id => current_user.id)
		@user_favorites = @user_favorites.sort_by &:pokemon_id
	end

	def create
		@pokemon = Pokemon.find(params[:pokemon_id])
		@favorite = Favorite.new({ user_id: current_user.id, pokemon_id: @pokemon.id })
	    current_user.favorite(@favorite)

	    respond_to do |format|
	      format.js   {render 'pokemons/create'}
	    end
	end

	def destroy
		@pokemon = Favorite.find(params[:id])
	    current_user.unfavorite(@pokemon)

	    respond_to do |format|
	      format.js   {render 'pokemons/destroy'}
    	end

	end

end
