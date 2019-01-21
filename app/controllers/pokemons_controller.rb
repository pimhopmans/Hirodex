class PokemonsController < ApplicationController
	before_action :require_login, only: [:index, :show, :favorite]
	
	def index
		@pokedex = Pokemon.all
	end

	def show
		@api_controller = ApiServiceController.new
		
		@pokemon = @api_controller.get_pokemon(params[:id])
		@flavor_text = @api_controller.get_pokemon_flavor_text(params[:id])
	end

end
