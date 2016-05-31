class Route < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :train
end
