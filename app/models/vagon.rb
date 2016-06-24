class Vagon < ActiveRecord::Base
  belongs_to :train
  validates :number, :top_seats, :bottom_seats, presence: :true

  before_validation :set_number

  def self.show_vagons
    my_vagons = ['Cupe',' Plackart', 'Sv', 'Seat']
  end

  private

  def set_number
    self.number = Vagon.maximum('number') + 1
  end

end
