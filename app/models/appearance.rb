class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

   validates_inclusion_of :rating, in: 1..5
   #validates :episode_id && :guest_id, uniqueness: true
    #if guest_id exists, in appearance, the episode_id must be unique

   def guest_rating

   end
end
