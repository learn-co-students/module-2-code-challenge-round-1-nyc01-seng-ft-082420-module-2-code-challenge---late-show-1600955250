class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
  
  def show 
    @guest = Guest.find(params[:id])
    @avg = 0
    @guest.episodes.each do |episode|
      @avg += episode.appearance.rating 
    end 
    @avg = @avg / @guest.episodes.length()

  end 
  # On the Episode show page, show the average rating of the Appearances for the episode.
  #this would show avg not sure if 100% correct 
  
end
