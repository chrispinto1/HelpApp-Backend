class User < ApplicationRecord
  has_many :campaigns
  has_many :donations
  has_many :campaigns, through: :donations
  has_secure_password
end
