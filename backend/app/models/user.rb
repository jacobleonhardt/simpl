class User < ApplicationRecord

  VALID_EMAIL = /@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, length: {
    maximum: 255,
  }, format: {
    with: VALID_EMAIL
  }, uniqueness: true

  has_secure_password
  validates :password, presence: true, length {
    maximum: 255,
    minimum: 6,
  }

  attr_accessor :name, :email
end
