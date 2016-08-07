class SearchesController < ApplicationController
  def new
    @stations = RailwayStation.all
  end

  def show
    @stations = RailwayStation.all
    @mytrains = Search.show_trains(params[:start_station], params[:end_station])
  end
end
