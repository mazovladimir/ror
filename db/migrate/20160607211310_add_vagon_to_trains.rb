class AddVagonToTrains < ActiveRecord::Migration
  def change
    add_belongs_to :vagons, :train
  end
end
