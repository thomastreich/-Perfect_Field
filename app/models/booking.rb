class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :moissonneuse
  validates :starting_date, :ending_date, presence: true if dates?
  validates :moissonneuse, uniqueness: { scope: :user }

  def dates?
    starting_date < ending_date
  end

end
