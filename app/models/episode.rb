class Episode < ApplicationRecord
    has_many :appearances
    has_mahy :episodes, through: :appearances
end
