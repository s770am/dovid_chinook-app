class TracksController < ApplicationController
    def index
        @tracks = Track.all
    end

    def search
        @tracks = Track.name_strats_with(params[:search])
    end
end
