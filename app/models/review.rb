class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  validates :content, presence: true, length: { minimum: 5, maximum: 100 }
  validates :rating, presence: true, inclusion: (1..5)
end
