class AddTicketToTrain < ActiveRecord::Migration
  def change
    add_belongs_to :trains, :ticket
  end
end
