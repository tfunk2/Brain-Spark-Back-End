class User < ApplicationRecord
  has_secure_password
  belongs_to :lifetime_score

  validates :username, :password, presence: true
  validates :username, length: { minimum: 6, maximum: 14, message: "%{attribute} must be between 6 and 14 characters long." }
  validates :username, uniqueness: {message: "%{attribute}s must be unique, and %{value} has already been taken."}
end
