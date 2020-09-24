class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def ordered_apps
        self.appearances.order(rating: :desc)
    end
end
