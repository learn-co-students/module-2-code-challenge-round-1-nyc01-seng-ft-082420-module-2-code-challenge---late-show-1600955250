class AppearancesController < ApplicationController
    # before_action :find_appearance, only: []

    def index
        @appearances = Appearance.all
    end
    
    def new
        @appearance = Appearance.new
    
    end

    def create
        appearance = Appearance.create(appearance_params)
        if appearance.valid?
            appearance.save
            redirect_to episode_path(appearance.episode)
        else
            flash[:errors] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end
        
    end

    private

    def appearance_params
        params.require(:appearance).permit!
    end

    # def find_appearance
    #     @appearance = Appearance.find(params[:id])
    # end
end
