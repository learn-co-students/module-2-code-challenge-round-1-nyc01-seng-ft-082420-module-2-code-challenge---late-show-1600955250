class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
  end

  def new
    @guest = Guest.new
  end

  def create
    guest = Guest.create(guest_params)
    # validations here
    redirect_to guest_path(guest)
  end

  private

    def guest_params
      params.require(:guest).permit!
    end

end
