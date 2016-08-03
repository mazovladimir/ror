class Admin::VagonsController < Admin::BaseController
  before_action :set_train, only: [:new, :create]

  def new
    @my_vagons = Vagon.show_vagons
    @vagon = Vagon.new
  end

  def show
    @vagon = Vagon.find(params[:id])
  end

  def create
    @my_vagons = Vagon.show_vagons
    @vagon = @train.vagons.new(vagon_params)

    if @vagon.save
      redirect_to @train
    else
      render :new
    end
  end

  protected

  def set_train
    @train = Train.find(params[:train_id])
  end

  def vagon_params
    params.require(:vagon).permit(:type, :number, :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats)
  end
end
