class AddTrainToLastStation < ActiveRecord::Migration
  def change
    add_belongs_to :trains, :last_station
  end
end
