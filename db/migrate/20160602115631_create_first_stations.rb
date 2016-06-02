class CreateFirstStations < ActiveRecord::Migration
  def change
    create_table :first_stations do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
