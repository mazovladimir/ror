class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  def index
    @places = Place.all
  end
 
  def show
  end
 
  def new
    @place = Place.new
  end
 
  def edit
  end
 
  def create
    @place = Place.new(place_params)
 
    if @place.save
      redirect_to @place
    else
      render 'new'
    end
  end
 
  def update
    if @place.update(place_params)
      redirect_to @place
    else
      render 'edit'
    end
  end
 
  def destroy
    @place.destroy
 
    redirect_to places_path
  end
 
  private
  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:title, :vagon_id)
  end
end