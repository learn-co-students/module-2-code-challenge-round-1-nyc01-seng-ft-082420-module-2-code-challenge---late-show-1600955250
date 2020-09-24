class Episode < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def episode_number_with_date
        "Episode #{self.number} - #{self.date.strftime("%B %d, %Y")}"
    end
end
