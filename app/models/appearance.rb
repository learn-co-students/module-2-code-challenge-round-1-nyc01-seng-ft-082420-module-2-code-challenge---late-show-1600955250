class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: {greater_than: 0, less_than:6}
    validates :episode, uniqueness: { scope: :guest,
   message: "Guest can only appear on episode once." }
end
