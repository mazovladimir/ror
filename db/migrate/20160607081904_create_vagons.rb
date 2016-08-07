class CreateVagons < ActiveRecord::Migration
  def change
    create_table :vagons do |t|
      t.string :vagon_type
      t.integer :top_seats
      t.integer :number
      t.integer :bottom_seats
      t.integer :side_top_seats
      t.integer :side_bottom_seats
      t.string :type

      t.timestamps
    end
  end
end
