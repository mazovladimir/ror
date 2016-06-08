class Vagon < ActiveRecord::Base
  belongs_to :train
  has_many :places
  validates :title, presence: :true
  validates_format_of :title, :with => /\A(cupe|plackart)\Z/
end
