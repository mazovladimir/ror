class Vagon < ActiveRecord::Base
  belongs_to :train
  validates :vagon_type, presence: :true
end
