class RailwayStation < ActiveRecord::Base
  has_many :trains, class_name: 'Train', foreign_key: :current_station_id
  has_many :tickets, class_name: 'Ticket', foreign_key: :first_station_id
  has_many :tickets, class_name: 'Ticket', foreign_key: :last_station_id
  
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  validates :title, presence: true
end
