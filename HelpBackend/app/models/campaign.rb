class Campaign < ApplicationRecord
  has_many :donations
  belongs_to :user
  has_many :users, through: :donations
end
