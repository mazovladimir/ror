class Train < ActiveRecord::Base
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  belongs_to :route
  has_many :vagons
  validates :title, presence: true

  def upcupe(train)
    temp_cupe = train.vagons.where(vagon_type: 'cupe')
    upcupe = 0
    temp_cupe.each do |temp|
      upcupe += temp.up if !temp.up.nil?
    end
    return upcupe
  end

  def downcupe(train)
    temp_cupe = train.vagons.where(vagon_type: 'cupe')
    downcupe = 0
    temp_cupe.each do |temp|
      downcupe += temp.down if !temp.down.nil?
    end
    return downcupe
  end

 def upplackart(train)
    temp_plackart = train.vagons.where(vagon_type: 'plackart')
    upplackart = 0
    temp_plackart.each do |temp|
      upplackart += temp.up if !temp.up.nil?
    end
    return upplackart
  end

 def downplackart(train)
    temp_plackart = train.vagons.where(vagon_type: 'plackart')
    downplackart = 0
    temp_plackart.each do |temp|
      downplackart += temp.down if !temp.down.nil?
    end
  return downplackart
  end

end
