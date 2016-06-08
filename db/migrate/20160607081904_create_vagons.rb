class CreateVagons < ActiveRecord::Migration
  def change
    create_table :vagons do |t|
      t.string :title
      t.integer :up
      t.integer :down

      t.timestamps
    end
  end
end
