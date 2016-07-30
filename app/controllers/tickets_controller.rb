class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  def index
    @tickets = Ticket.all
  end
 
  def show
  end
 
  def new
    @ticket = Ticket.new
    @ticket.first_station = RailwayStation.find(params[:first_station_id])
    @ticket.last_station = RailwayStation.find(params[:last_station_id])
  end
 
  def edit
  end
 
  def create
    @ticket = Ticket.new(ticket_params)
 
    if @ticket.save
      redirect_to @ticket
    else
      render 'new'
    end
  end
 
  def update
    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render 'edit'
    end
  end
 
  def destroy
    @ticket.destroy
 
    redirect_to tickets_path
  end
 
  private
  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:title, :text, :name, :surname, :middlename, :passport, :first_station_id, :last_station_id)
  end
end
