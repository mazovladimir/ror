class Search < ActiveRecord::Base
  def self.show_trains(start_station,end_station)
    route1 = RailwayStation.find(start_station).routes.all
    route2 = RailwayStation.find(end_station).routes.all
    routes = route1 & route2
    Train.where(route: routes)
  end
end
