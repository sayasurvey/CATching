class Board < ApplicationRecord
	acts_as_ordered_taggable_on :cat_types, :hair_colors, :characters, :length_of_legs, :tags

	belongs_to :user

	validates :movie_url, presence: true, uniqueness: true
end
