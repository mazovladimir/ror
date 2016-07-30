class AddStationToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :start, :string
    add_column :tickets, :end, :string
  end
end
