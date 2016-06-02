class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :train
  has_many :trains
  has_many :first_stations, through: :trains
end
