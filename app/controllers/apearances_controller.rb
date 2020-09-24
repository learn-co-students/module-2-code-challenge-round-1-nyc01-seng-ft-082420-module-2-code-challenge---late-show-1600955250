class ApearancesController < ApplicationController
  def new
    @apearance = Apearance.new
  end

  def create
    @apearance = Apearance.create(apearance_params)
    if @apearance.valid?
      redirect_to episode_path(@apearance.episode)
    else
      flash[:error_throw] = @apearance.errors.full_messages
      redirect_to new_apearance_path(@apearance)
    end
  end


  private 

  def apearance_params
    params.require(:apearance).permit(:episode_id, :guest_id, :rating)
  end
end
