class AppearancesController < ApplicationController

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
        # validations here
        redirect_to episode_path(appearance.episode)
            # trying to redirect this to episode path, specifying this is
                #the appearance that belongs to this episode
    end

    private

        def appearance_params
        params.require(:appearance).permit!
        end

end
