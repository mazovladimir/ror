class CreateLastStations < ActiveRecord::Migration
  def change
    create_table :last_stations do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
