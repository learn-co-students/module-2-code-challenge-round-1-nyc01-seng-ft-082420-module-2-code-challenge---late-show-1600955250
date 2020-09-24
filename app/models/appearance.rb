class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: {
    greater_than: 0, less_than_or_equal_to: 5
  }

  validates :guest_id, uniqueness: {
    scope: :episode_id, message: "Guest can only make an appearance once per episode"
  }
end
