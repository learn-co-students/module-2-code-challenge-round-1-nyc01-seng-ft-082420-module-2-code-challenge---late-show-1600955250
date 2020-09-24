class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def average_rating
    if self.appearances.count != 0
      self.appearances.sum{|appe| appe.rating}/self.appearances.count
    else
      return 0
    end
  end
end
