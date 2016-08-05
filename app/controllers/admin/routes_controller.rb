class Admin::RoutesController < Admin::BaseController
  before_action :set_train, only: [:show, :edit, :update, :destroy]
  def index
    @routes = Route.all
  end
 
  def show
  end
 
  def new
    @route = Route.new
  end
 
  def edit
  end
 
  def create
    @route = Route.new(route_params)
 
    if @route.save
      redirect_to [:admin, @route]
    else
      render 'new'
    end
  end
 
  def update
    if @route.update(route_params)
      redirect_to [:admin, @route]
    else
      render 'edit'
    end
  end
 
  def destroy
    @route.destroy
 
    redirect_to admin_routes_path
  end
 
  private
  def set_train
    @route = Route.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:title, :text, :railway_station_ids, :train_ids)
  end
end
