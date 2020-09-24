class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating
        if self.appearances.any?
            self.appearances.sum { |a| a.rating } / self.appearances.count.to_f
        else
            "Not Yet Rated"
        end
    end
end
