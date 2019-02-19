class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  validates :user, uniqueness: { scope: :plant }
  validates :time, presence: true, numericality: true
end
