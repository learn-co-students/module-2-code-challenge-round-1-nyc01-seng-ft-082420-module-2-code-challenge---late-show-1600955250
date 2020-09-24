class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def get_ratings
        self.appearances.map {|app| app.rating}.inject(:+)
    
    
    end

    def how_many_appearances
        self.appearances.count
    
    end

    def average_rating
        get_ratings/how_many_appearances 
    
    end
end
