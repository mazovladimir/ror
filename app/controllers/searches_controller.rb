class SearchesController < ApplicationController
  def show
    @routes = Search.show_trains
    @stations = RailwayStation.all
  end

  def create
    redirect_to search_path
  end
end
