class AppearanceController < ApplicationController
 
  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(appearance_params)

    redirect_to appearance_path(appearance)
  end








end
