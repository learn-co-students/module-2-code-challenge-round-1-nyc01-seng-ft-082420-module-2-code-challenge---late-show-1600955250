class Episode < ApplicationRecord
    has_many :apearances
    has_many :guests, through: :apearances

    def average_rating
        average = 0
        count = 0
        self.apearances.each do |apearances|
            count+=1
            average = average + apearance.rating
        end
        average = average/count


    end

end
