class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: true, inclusion: {in: 1..5,
    message: " must be between 1 through 5"}

  validates :guest, uniqueness: true
end
