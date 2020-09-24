class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(params.require(:appearance).permit!)
    if @appearance.valid?
      @appearance.save
      redirect_to episode_path(@appearance.episode)
    else
      render :new
    end
  end
end
