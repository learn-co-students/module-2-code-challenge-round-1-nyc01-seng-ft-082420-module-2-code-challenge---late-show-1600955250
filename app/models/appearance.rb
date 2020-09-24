class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

   validates_inclusion_of :rating, in: 1..5
   #validates :episode_id && :guest_id, uniqueness: true
end
