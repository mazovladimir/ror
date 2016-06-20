class CreateCarriage < ActiveRecord::Migration
  def change
    create_table :carriages do |t|
      t.string :mytype

      t.timestamps
    end
  end
end
