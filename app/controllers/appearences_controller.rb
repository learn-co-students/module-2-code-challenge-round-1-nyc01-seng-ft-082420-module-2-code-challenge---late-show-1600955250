class AppearencesController < ApplicationController

    def new
        @appearence = Appearence.new
    end

    def create
        appearence = Appearence.create(params.require(:appearence).permit!)

        if appearence.valid?
            redirect_to appearence_path(appearence)
        else
            flash[:my_errors] = appearence.errors.full_messages
            redirect_to new_appearence_path
        end
    end
    

end
