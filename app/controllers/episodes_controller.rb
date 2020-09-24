class EpisodesController < ApplicationController
  before_action :set_ep, only: [:show]

  def index
    @episodes = Episode.all
  end

  def show
  end

  private

  def set_ep
    @episode = Episode.find(params[:id])
  end
end
