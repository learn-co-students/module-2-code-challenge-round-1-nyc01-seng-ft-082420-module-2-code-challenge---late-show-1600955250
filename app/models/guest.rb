class Guest < ApplicationRecord
    has_many :apearances
    has_many :episodes, through: :apearances
end
