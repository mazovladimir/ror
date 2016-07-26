class Search < ActiveRecord::Base
  def self.show_trains(start_station)
    route1 = RailwayStation.find(start_station).routes.all
    route1.each do |route1|
      route1.trains.to_a.each do |train|
        return train.title
      end
    end
  end
end
