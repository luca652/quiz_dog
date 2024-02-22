class Message < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :number, presence: true
  validates :message, presence: true

end
