class AddTrainToFirstStation < ActiveRecord::Migration
  def change
    add_belongs_to :trains, :first_station
  end
end
