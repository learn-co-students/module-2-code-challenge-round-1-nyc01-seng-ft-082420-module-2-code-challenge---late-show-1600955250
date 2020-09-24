class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end 

  def self.average_rating
    self.episode.appearances.reduce(0.0) {|sum, num| sum+ num}.to_f / episode.size
  end

end
