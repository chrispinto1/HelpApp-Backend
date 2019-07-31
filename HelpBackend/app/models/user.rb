class User < ApplicationRecord
  has_many :campaigns
  has_many :donations
  has_many :campaigns, through: :donations

  validates :name, presence: true
   validates :username, presence: true
   validates :password, presence: true
   validates :credit_card, presence: true
  has_secure_password
end
