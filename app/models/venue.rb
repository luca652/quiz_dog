class Venue < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :gigs
  has_many :quizmasters, through: :gigs
  has_one_attached :photo

  validates :name, :address, :time, :photo, :day_of_the_week, :phone_number, presence: true
end
