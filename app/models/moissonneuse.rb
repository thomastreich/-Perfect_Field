class Moissonneuse < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  BRANDS = ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"]
  validates :name, :description, :power, :address, :brand, :model, presence: true
  validates :name, uniqueness: true
  validates :brand, inclusion: { in: BRANDS }
  validates :description, length: { in: 200..600 }
end
