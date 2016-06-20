class Vagon < ActiveRecord::Base
  belongs_to :train
  validates :number, :top_seats, :bottom_seats, presence: :true

  before_validation :set_number

  private

  def set_number
    self.number = Random.rand(0...10)
  end

end
