class Train < ActiveRecord::Base
  belongs_to :ticket
  has_many :routes
end
