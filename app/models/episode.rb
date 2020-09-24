class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def average_score
    self.appearances.uniq.sum{|a| a.rating_score}/self.appearances.uniq.count
  end

end
