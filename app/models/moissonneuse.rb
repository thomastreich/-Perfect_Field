class Moissonneuse < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_one_attached :photo

  validates :photo, :name, :description, :power, :address, :brand, :model, :price, presence: true
  BRANDS = ["Massey Ferguson", "John Deer", "Claas", "New Holland", "Case IH", "Fendt", "Dodge", "Laverda", "Deutz-Fahr"]
  validates :brand, inclusion: { in: BRANDS }

  validates :description, length: { in: 30..200 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
