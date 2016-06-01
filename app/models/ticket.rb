class Ticket < ActiveRecord::Base
  has_many :users
  has_many :trains
end
