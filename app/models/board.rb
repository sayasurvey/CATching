class Board < ApplicationRecord
	acts_as_taggable

	validates :movie_url, presence: true, uniqueness: true
end
