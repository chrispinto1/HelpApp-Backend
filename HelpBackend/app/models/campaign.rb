class Campaign < ApplicationRecord
  has_many :donations, :dependent => :destroy
  belongs_to :user
  has_many :users, through: :donations
end
