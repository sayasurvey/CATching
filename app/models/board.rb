class Board < ApplicationRecord
	validates :movie_url, presence: true, uniqueness: true
end
