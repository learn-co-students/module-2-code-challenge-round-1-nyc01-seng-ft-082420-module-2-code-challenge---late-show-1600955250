class AppearancesController < ApplicationController
    before_action :find_appearance, only: [:show, :update]

    def index
    @appearances = Appearance.all
end

    def show
    end

    def new
        @appearance = Appearance.new
    end

    def create
        appearance = Appearance.create(appearance_params)

        if appearance.valid?
            redirect_to episode_path(episode)
        else 
            flash[:my_errors] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    def update
        @appearance = Appearance.update
        redirect_to episode_path(episode)
    end

private

    def find_appearance
        @appearance = Appearance.find(params[:id])
    end

    def appearance_params
        params.require(:appearance).permit!
    end

end
