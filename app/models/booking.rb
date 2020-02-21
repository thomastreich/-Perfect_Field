class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :moissonneuse
  validates :starting_date, :ending_date, presence: true
  validate :moissonneuse_date_uniqueness
  # validates :moissonneuse, uniqueness: { scope: :user }

  attr_accessor :price

  scope :past, -> { where("? > ending_date", Date.today)}
  scope :current, -> { where("? BETWEEN starting_date AND ending_date", Date.today)}
  scope :future, -> { where("? < ending_date", Date.today)}

  def length_in_days
    (ending_date - starting_date + 1).to_i
  end

  def price
    moissonneuse.price * length_in_days if moissonneuse
  end

  def moissonneuse_date_uniqueness
  end
end
