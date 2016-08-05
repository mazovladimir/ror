class AddInitialToRegistrations < ActiveRecord::Migration
  def change
    add_column :users, :myname, :string
    add_column :users, :mysurname, :string
  end
end
