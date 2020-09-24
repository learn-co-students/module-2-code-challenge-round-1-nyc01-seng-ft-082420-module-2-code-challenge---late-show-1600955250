class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def show_rating
        self.appearances.map{|a| a.rating}.join 
    end
end
