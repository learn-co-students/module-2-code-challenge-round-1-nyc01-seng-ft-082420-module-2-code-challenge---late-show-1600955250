class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @guest = Guest.all
        @episode = Episode.all
    end
    #def create
    #end
end
