class FirstStationsController < ApplicationController
  before_action :set_first_station, only: [:show, :edit, :update, :destroy]
  def index
    @first_stations = FirstStation.all
  end
 
  def show
  end
 
  def new
    @first_station = FirstStation.new
  end
 
  def edit
  end
 
  def create
    @first_station = FirstStation.new(first_station_params)
 
    if @first_station.save
      redirect_to @first_station
    else
      render 'new'
    end
  end
 
  def update
    if @first_station.update(first_station_params)
      redirect_to @first_station
    else
      render 'edit'
    end
  end
 
  def destroy
    @first_station.destroy
 
    redirect_to first_stations_path
  end
 
  private
  def set_first_station
    @first_station = FirstStation.find(params[:id])
  end

  def first_station_params
    params.require(:first_station).permit(:title, :text)
  end
end
