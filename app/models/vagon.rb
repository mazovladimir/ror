class Vagon < ActiveRecord::Base
  belongs_to :train
  validates :number, :top_seats, :bottom_seats, presence: :true

  before_validation :set_number

  def self.show_vagons
    my_vagons = ['Cupe',' Plackart', 'Sv', 'Seat']
  end

  private

  def set_number
    vagon_count = []
    train.each do |vagon|
      vagon_count << vagon.number
    end
    self.number = vagon_count.max + 1
  end
end
