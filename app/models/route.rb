class Route < ActiveRecord::Base
  has_many :trains
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes

  validates :title, presence: true

  scope :count_order, -> { order(:count) }

  def self.show_trains
    Route.find_each do |route|
      @route = route.railway_stations
      @route.each do |station|
        station.title
      end
    end
  end
end

