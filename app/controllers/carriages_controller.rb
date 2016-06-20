class CarriagesController < ApplicationController
  before_action :set_train, only: [ :show, :create  ]

  def new
    @carriage = Carriage.new
  end

  def show
    @carriage = Carriage.find(params[:id])
  end

  def create
    @carriage = Vagon.create(carriage_params)

    if @carriage.save
      redirect_to @train
    else
      render :new
    end
  end

  protected

  def set_train
    @train = Train.find(params[:train_id])
  end

  def carriage_params
    params.require(:carriage).permit(:mytype)
  end
end
