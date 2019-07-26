class User < ApplicationRecord
  has_many :events
  has_many :donations
  has_many :events, through: :donations
  has_secure_password
end
