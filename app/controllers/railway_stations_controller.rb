class Railway_stationsController < ApplicationController
  before_action :set_railway_station, only: [:show, :edit, :update, :destroy]
  def index
    @railway_stations = Railway_station.all
  end
 
  def show
  end
 
  def new
    @railway_station = Railway_station.new
  end
 
  def edit
  end
 
  def create
    @railway_station = Railway_station.new(railway_station_params)
 
    if @railway_station.save
      redirect_to @railway_station
    else
      render 'new'
    end
  end
 
  def update
    if @railway_station.update(railway_station_params)
      redirect_to @railway_station
    else
      render 'edit'
    end
  end
 
  def destroy
    @railway_station.destroy
 
    redirect_to railway_stations_path
  end
 
  private
  def set_railway_station
    @railway_station = Railway_station.find(params[:id])
  end

  def railway_station_params
    params.require(:railway_station).permit(:title)
  end
end
