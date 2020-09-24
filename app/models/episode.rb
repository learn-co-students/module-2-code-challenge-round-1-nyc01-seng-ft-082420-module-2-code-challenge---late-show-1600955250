class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating
        self.appearances.distinct.average(:rating).round()
    end
end
