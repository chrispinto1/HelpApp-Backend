class DonationSerializer < ActiveModel::Serializer
 attributes :id, :user_id, :campaign_id, :amount, :created_at
 belongs_to :user, include_nested_associations: true
 belongs_to :campaign, include_nested_associations: true
end
