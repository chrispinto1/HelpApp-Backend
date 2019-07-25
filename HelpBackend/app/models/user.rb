class User < ApplicationRecord
  has_many :events
  has_many :donations
  has_many :events, through: :donations
end
