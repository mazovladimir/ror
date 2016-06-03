class AddFirstStationToRailwayStations < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :first_station
  end
end
