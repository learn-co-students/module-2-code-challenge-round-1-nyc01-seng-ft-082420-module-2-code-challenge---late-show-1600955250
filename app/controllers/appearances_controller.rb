class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @guest = Guest.all
        @episode = Episode.all
    end
    def create
        appearances_params = params.require(:appearance).permit(:guest_id, :episode_id, :rating)
        @appearance = Appearance.create(appearances_params)
        redirect_to new_appearances_path
    end
end
