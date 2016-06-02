class LastStationsController < ApplicationController
  before_action :set_last_station, only: [:show, :edit, :update, :destroy]
  def index
    @last_stations = LastStation.all
  end
 
  def show
  end
 
  def new
    @last_station = LastStation.new
  end
 
  def edit
  end
 
  def create
    @last_station = LastStation.new(last_station_params)
 
    if @last_station.save
      redirect_to @last_station
    else
      render 'new'
    end
  end
 
  def update
    if @last_station.update(last_station_params)
      redirect_to @last_station
    else
      render 'edit'
    end
  end
 
  def destroy
    @last_station.destroy
 
    redirect_to last_stations_path
  end
 
  private
  def set_last_station
    @last_station = LastStation.find(params[:id])
  end

  def last_station_params
    params.require(:last_station).permit(:title, :text)
  end
end
