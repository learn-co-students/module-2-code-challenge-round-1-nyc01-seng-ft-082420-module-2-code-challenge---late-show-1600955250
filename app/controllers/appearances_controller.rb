class AppearancesController < ApplicationController
    # before_action :find_appearance, only: []

    def index
        @appearances = Appearance.all
    end
    
    def new
        @appearance = Appearance.new
        @appearance.save
    end

    def create
        appearance = Appearance.create(appearance_params)
        redirect_to episode_path(appearance.episode)
    end

    private

    def appearance_params
        params.require(:appearance).permit!
    end

    # def find_appearance
    #     @appearance = Appearance.find(params[:id])
    # end
end
