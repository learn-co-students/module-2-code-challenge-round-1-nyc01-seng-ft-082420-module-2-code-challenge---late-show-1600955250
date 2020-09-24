class Appearence < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: { greater_than: 0, less_then: 6}
    validates :guest_id, uniqueness: true

    def new
        @appearence = Appearence.new
    end

    def create
        appearence = Appearence.create(params.require(:appearence).permit!)

        if appearence.valid?
            redirect_to 
    end
end
