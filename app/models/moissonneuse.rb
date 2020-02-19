class Moissonneuse < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  validates :photo, :name, :description, :power, :address, :brand, :model, :price, presence: true
  BRANDS = ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"]
  validates :brand, inclusion: { in: BRANDS }
  validates :description, length: { in: 30..200 }
end
