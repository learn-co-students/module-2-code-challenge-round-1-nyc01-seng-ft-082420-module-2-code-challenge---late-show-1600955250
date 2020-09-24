class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all 
    end

    def show 
        @appearance = Appearance.find(params[:id])
    end

    def new 
        @appearance = Appearance.new
    end
    
    def create
        @appearance = Appearance.create(appearance_params)

        if @appearance.valid?
            flash[:success] = "Appearance Created!"
            redirect_to episode_path(@appearance.episode)
        else 
            flash[:my_errors] = @appearance.errors.full_messages

            redirect_to new_appearance_path
        end
    end

    private
    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end