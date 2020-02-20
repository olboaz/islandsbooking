class Booking < ApplicationRecord
  belongs_to :island
  belongs_to :user

  STATUS = ['pending', 'refused', 'accepted']
  validates :status, inclusion: { in: STATUS }
  validates :start_date, :end_date, presence: true, availability: true
  validate :check_date_from_today, :end_date_after_start_date
  validates :total_price, presence: true, numericality: { greater_than: 0 }
  validates :island, :user, presence: true


  private

  def check_date_from_today
    if start_date.present? && start_date < Date.today
      errors.add(:end_date, "must be after today's date")
    end
  end

  def end_date_after_start_date
    if start_date.present? && end_date.present? && end_date <= start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

end
