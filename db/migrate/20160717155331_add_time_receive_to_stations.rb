class AddTimeReceiveToStations < ActiveRecord::Migration
  def change
    add_column :railway_stations, :timereceive, :string
  end
end
