class Quizmaster < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :venues

  validates :name, presence: true
end
