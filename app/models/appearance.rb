class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
    validate :no_repeats

    #private

    def no_repeats
        #This method is called after the creation of a new appearance so I'm checking that the combo hadn't already been created
        #(In which case the number of appearances with the matching episode_id and guest_id would be >1)
        if (Appearance.where(episode_id: self.episode_id, guest_id: self.guest_id)).count > 1
            errors.add(:guest_id, "already appeared on this date")
        end
    end
end