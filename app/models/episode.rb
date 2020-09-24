class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating
        self.appearances.sum { |a| a.rating } / self.appearances.count.to_f
    end
end
