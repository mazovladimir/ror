class RailwayStation < ActiveRecord::Base
  has_many :trains, class_name: 'Train', foreign_key: :current_station_id
  #has_many :current_stations, class_name: 'Train'
  
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
end
