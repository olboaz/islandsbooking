class Island < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true
  validates :address, presence: true, length: { minimum: 5 }
  validates :number_of_guests, presence: true, numericality: { only_integer: true }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :user, presence: true
end
