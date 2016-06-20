class Carriage < ActiveRecord::Base
  belongs_to :train

  validates :number, :top_seats, :bottom_seats, presence: :true

  before_validation :check_duplicate_number, :set_number

  private

  def set_number
    self.number = Random.rand(0...10)
  end

  def check_duplicate_number
    train.vagons.each do |vagon|
      return "Vagon can't be added due to duplication number..." if vagon.number == number
    end
  end
end
