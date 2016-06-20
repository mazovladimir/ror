class RailwayStation < ActiveRecord::Base
  has_many :trains, class_name: 'Train', foreign_key: :current_station_id
  has_many :tickets, class_name: 'Ticket', foreign_key: :first_station_id
  has_many :tickets, class_name: 'Ticket', foreign_key: :last_station_id
  
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  
  validates :title, presence: true

  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.position").uniq }
  
  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(position: position) if station_route
  end

  def position_in(route)
    station_route(route).try(:position)
  end

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
