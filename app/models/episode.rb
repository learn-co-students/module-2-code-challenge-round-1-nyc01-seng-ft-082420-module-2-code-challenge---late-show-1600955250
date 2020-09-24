class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def show_rating
        self.appearances.map{|a| a.rating}.join 
    end

    def average_rating
        self.appearances.map{|a| a.rating}.sum / self.appearances.length
    end
end
