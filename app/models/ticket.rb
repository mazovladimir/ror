class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :start_station, class_name: 'RailwayStation', foreign_key: :start_station_id
  belongs_to :end_station, class_name: 'RailwayStation', foreign_key: :end_station_id
  belongs_to :train
  belongs_to :first_station, class_name: 'RailwayStation', foreign_key: :first_station_id
  belongs_to :last_station, class_name: 'RailwayStation', foreign_key: :last_station_id

  def self.result_start(start_s)
    start_st = RailwayStation.find(start_s)
  end

  def self.result_end(end_s)
    end_st = RailwayStation.find(end_s)
  end
end
