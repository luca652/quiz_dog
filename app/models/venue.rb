class Venue < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :phone_number, :day_of_the_week, :time, :address, presence: true

  belongs_to :user
  has_one_attached :photo
end
