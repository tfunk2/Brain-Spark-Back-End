class User < ApplicationRecord
    # has_secure_password
    
    validates :username, :password_digest, presence: true
    validates :username, length: { minimum: 6, maximum: 14, message: "Username must be between 6 and 14 characters long."}
    validates :password_digest, length: { minimum: 6, maximum: 14, message: "Password must be between 6 and 14 characters long."}
    validates :username, uniqueness: {message: "%{value} has already been taken."}
end
