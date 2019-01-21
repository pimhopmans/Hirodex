# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pokemon.destroy_all

@api_controller = ApiServiceController.new

for i in 1..151
    @pokemon = @api_controller.get_pokemon(i)

    Pokemon.create!([{
   		name: @pokemon["name"].capitalize,
   		nat_pd_id: @pokemon["id"],
		sprite: @pokemon["sprites"]["front_default"]
   	}])

	p "Created #{Pokemon.count} Pokémon"
end