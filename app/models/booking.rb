class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :moissonneuse
  validates :starting_date, :ending_date, presence: true
  validates :moissonneuse, uniqueness: { scope: :user }

  attr_accessor :price

  # def dates?
  #   starting_date < ending_date
  # end

end
