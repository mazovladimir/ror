class Ticket < ActiveRecord::Base
  has_many :users
  belongs_to :train
end
