class Venue < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :should_geocode?

  belongs_to :user
  has_many :gigs, dependent: :destroy
  has_many :quizmasters, through: :gigs
  has_one_attached :photo

  validates :name, :address, :time, :photo, :day_of_the_week, :phone_number, presence: true

  private

  def should_geocode?
    will_save_change_to_address? && !Rails.env.test? && !ENV['SKIP_GEOCODE']
  end
end
