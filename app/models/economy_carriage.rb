class EconomyCarriage < Vagon
  validates :side_top_seats, :side_bottom_seats, presence: :true
end
