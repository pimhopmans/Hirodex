class ApiServiceController

  def initialize
  end

  def get_pokedex
    response = HTTParty.get("http://pokeapi.co/api/v2/pokemon/")
	  pokedex = JSON.parse(response.body)["results"]
  end

  def get_pokemon(id)
  	response = HTTParty.get("http://pokeapi.co/api/v2/pokemon/" + id.to_s + "/")
  	pokemon = JSON.parse(response.body)
  end

  def get_pokemon_flavor_text(id)
    response = HTTParty.get("http://pokeapi.co/api/v2/pokemon-species/" + id.to_s + "/")
    flavor_texts = JSON.parse(response.body)["flavor_text_entries"]

    # Loop through different flavor texts to find the first English text.
    temp = "Could not find Pokédex entry."
    for ft in flavor_texts do
      p ft
      if ft["language"]["name"] == "en"
        temp = ft["flavor_text"]
        break
      end
    end

    flavor_text = temp

  end

end