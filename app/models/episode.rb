class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        total_ratings = self.appearances.map {|appearance| appearance.rating }.sum
        average_ratings = total_ratings / self.appearances.count
    end
end
