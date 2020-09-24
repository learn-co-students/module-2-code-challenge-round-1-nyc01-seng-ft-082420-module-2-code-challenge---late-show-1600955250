class Episode < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def episode_number_with_date
        "Episode #{self.number} - #{self.date.strftime("%B %d, %Y")}"
    end

    def average_rating
        ratings = self.appearances.map {|appearance| appearance.rating}
        total_ratings = ratings.sum
        average = total_ratings / self.appearances.length
        average.to_f
    end
end
