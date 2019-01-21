class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
    	t.string :nat_pd_id
    	t.string :name
    	t.string :sprite
    	
    	t.timestamps
    end
  end
end
