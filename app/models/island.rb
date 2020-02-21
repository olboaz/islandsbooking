class Island < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true
  validates :address, presence: true, length: { minimum: 4 }
  validates :number_of_guests, presence: true, numericality: { only_integer: true }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :user, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def unavailable_dates
    bookings.where.not(status: 'refused').pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
