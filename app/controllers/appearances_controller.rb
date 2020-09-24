class AppearancesController < ApplicationController
    def new 
        @appearance = Appearance.new 
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create 
        appearance = Appearace.create(appearance_params)
        if appearance.valid?
        redirect_to episode_path(appearance.episode)
        else
    end
    private 
    def appearance_params
        params.require(:appearance).permit!
    end

end
