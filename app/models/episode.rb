class Episode < ApplicationRecord
    has_many :apearances
    has_many :guests, through: :apearances
end
