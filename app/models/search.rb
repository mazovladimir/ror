class Search < ActiveRecord::Base
  def self.show_trains(start_station,end_station)
    trains = []
    route1 = RailwayStation.find(start_station).routes.all
    route2 = RailwayStation.find(end_station).routes.all
    routes = route1 & route2
    routes.each do |myroutes|
      myroutes.trains.to_a.each do |train|
        trains << train.title
      end
    end
    return trains
  end
end
