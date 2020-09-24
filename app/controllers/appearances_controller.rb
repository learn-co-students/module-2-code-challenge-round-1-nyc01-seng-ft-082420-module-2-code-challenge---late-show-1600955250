class AppearancesController < ApplicationController

def new
    @appearance = Appearance.new
end 

def create 
    appearance = Apperance.create(appearance_params)
    if @appearance.valid?
        redirect_to guest_path(@appearance.guest)
    else 
        flash[:my_errors] = @appearance.errors.full_messages
        redirect_to new_appearance_path
    end 
end

# THIS IS FOR VALIDATION #5 SEE ABOVE 

private
def appearance_params
    params.require(:apperance).permit(:episode_id, :guest_id, :rating)
end