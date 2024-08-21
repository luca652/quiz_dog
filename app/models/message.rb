class Message < ApplicationRecord

  validates :name, :email, :number, :message, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
  validates :name, length: { maximum: 50 }
  validates :email, length: { maximum: 255 }
  validates :number, length: { maximum: 20 }
  validates :message, length: { maximum: 1000 }
  validates :number, format: { with: /\A[0-9\s]+\z/, message: "must only contain numbers" }, allow_blank: true

end
