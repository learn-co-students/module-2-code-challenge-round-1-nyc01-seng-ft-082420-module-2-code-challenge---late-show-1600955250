class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :episode, uniqueness: { scope: :guest, message: " already has an appearance from this guest."}
    validates :rating, inclusion: {in: (1..5), message: "must be between 1 and 5."}

end
