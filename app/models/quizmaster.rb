class Quizmaster < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  has_many :gigs
  has_many :venues, through: :gigs

  validates :name, presence: true
end
