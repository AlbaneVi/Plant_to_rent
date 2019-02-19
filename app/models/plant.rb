class Plant < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings

  validates :name, :family, :flowers, presence: true
  validates :price_per_day, :size_cm, presence: true, numericality: true
  validates :description, :water, :sun, :ext_int, presence: true
end
