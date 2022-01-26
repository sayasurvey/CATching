class Board < ApplicationRecord
	acts_as_ordered_taggable_on :cat_types, :hair_colors, :characters, :length_of_legs, :tags
	belongs_to :user

	validates :title, presence: true
	validates :movie_url, presence: true, format: { with: /\A(https\:\/\/)?(www\.)?(youtube\.com\/watch\?v=|youtu\.be\/)+[\S]{11}\z/ }
	validates :content, length: {maximum: 500}
end
