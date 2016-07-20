class Search < ActiveRecord::Base
  def self.show_trains
    Route.find_each do |route|
      @route = route.railway_stations
      @route.each do |station|
        station.title
      end
    end
  end
end

