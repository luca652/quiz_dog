class Quizmaster < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  has_many :gigs, dependent: :destroy
  has_many :venues, through: :gigs

  validates :name, :photo, :record, :breed, :fact, presence: true
end
