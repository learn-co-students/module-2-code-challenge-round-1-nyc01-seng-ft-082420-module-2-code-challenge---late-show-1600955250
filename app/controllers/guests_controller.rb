class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    #@episode = Episode.sort_by{|episode| -episode.appearances.count}
  end 
end
