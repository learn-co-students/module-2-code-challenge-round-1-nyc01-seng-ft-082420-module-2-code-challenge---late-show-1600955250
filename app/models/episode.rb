class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def avg_rating
    rating = 0
    total = self.appearances.count
    self.appearances.each do |appearance|
      rating += appearance.rating
    end
    rating/total
  end


end
