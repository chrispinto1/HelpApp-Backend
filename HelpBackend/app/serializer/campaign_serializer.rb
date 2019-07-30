class CampaignSerializer < ActiveModel::Serializer
 attributes :id,:end_date, :title, :goal, :description, :created_at, :raised_donation, :user_id, :active, :image
 has_many :users, include_nested_associations: true
 has_many :donations, include_nested_associations: true
end
