class SearchesController < ApplicationController
  def new
    @stations = RailwayStation.all
  end

  def show
    @stations = RailwayStation.all
    @routes = Search.show_trains(params[:start_station])
  end
end
