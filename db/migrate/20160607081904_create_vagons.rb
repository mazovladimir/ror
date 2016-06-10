class CreateVagons < ActiveRecord::Migration
  def change
    create_table :vagons do |t|
      t.string :vagon_type
      t.integer :up
      t.integer :down

      t.timestamps
    end
  end
end
