class AddSortingToTrains < ActiveRecord::Migration
  def change
    add_column :trains, :sorting, :boolean
  end
end
