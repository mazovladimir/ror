class AddTimeSendToStations < ActiveRecord::Migration
  def change
    add_column :railway_stations, :timesend, :string
  end
end
