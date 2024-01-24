class House < ApplicationRecord
  validates :house_type, inclusion: { in: %w(one_bedroom bedsitter), message: "Invalid house type. Please choose either 'One bedroom' or 'Bedsitter'" }
  validates :house_number, inclusion: { in: %w(G1 G2 G3 G4 G5 G6 G7 A1 A2 A3 A4 A5 B1 B2 B3 B4 B5 C1 C2 C3 C4 C5), message: "Invalid house number. Please choose a valid house number" }
  validates :floor, inclusion: { in: %w(ground first second third), message: "Invalid floor. Please choose either 'Ground', 'First', 'Second', or 'Third'" }
  validates :house_type, :floor, :price, :house_number, :image_url_1, :image_url_2, :image_url_3, :image_url_4, :image_url_5, presence: true

#   belongs_to :house_owner
  has_many :tenants 
end
