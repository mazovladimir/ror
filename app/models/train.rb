class Train < ActiveRecord::Base
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  belongs_to :route
  has_many :vagons
  validates :title, presence: true

  def cupecount
    vagons.where(vagon_type: 'cupe').size
  end

  def plackartcount
    vagons.where(vagon_type: 'plackart').size
  end

  def upcupe
    temp_cupe = vagons.where(vagon_type: 'cupe')
    upcupe = 0
    temp_cupe.each do |temp|
      upcupe += temp.up if !temp.up.nil?
    end
    return upcupe
  end

  def downcupe
    temp_cupe = vagons.where(vagon_type: 'cupe')
    downcupe = 0
    temp_cupe.each do |temp|
      downcupe += temp.down if !temp.down.nil?
    end
    return downcupe
  end

 def upplackart
    temp_plackart = vagons.where(vagon_type: 'plackart')
    upplackart = 0
    temp_plackart.each do |temp|
      upplackart += temp.up if !temp.up.nil?
    end
    return upplackart
  end

 def downplackart
    temp_plackart = vagons.where(vagon_type: 'plackart')
    downplackart = 0
    temp_plackart.each do |temp|
      downplackart += temp.down if !temp.down.nil?
    end
  return downplackart
  end

end
