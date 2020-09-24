class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
    
    end

    def create
        @appearance = Appearance.create(app_params)
        if@appearance.valid?
            redirect_to episode_path(@appearance.episode_id)
        else
            flash[:app_errors] = @appearance.errors.full_messages
            render :new
        end
    end

    private

    def app_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end
