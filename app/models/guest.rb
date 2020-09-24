class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def episodes
        self.appearances.map{|a| a.episode}
    end

    def sorting_episodes_by_rating

    end

# Couldn't finish last advanced guest show page in time, but I know i had to create helper methods in models
# to connect the episodes and appearances and make methods to sort them by ratings and call that method or methods
# in show page.
end
