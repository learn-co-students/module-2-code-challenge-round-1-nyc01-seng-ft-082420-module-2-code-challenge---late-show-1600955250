class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        #self.appearances.each do |app|
            
    end    
end
