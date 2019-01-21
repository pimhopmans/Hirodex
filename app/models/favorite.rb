class Favorite < ApplicationRecord

	validates :user_id, uniqueness: { scope: :pokemon_id }

	belongs_to :pokemon
	belongs_to :user

end
