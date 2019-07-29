class UserSerializer < ActiveModel::Serializer
 attributes :id, :username, :name, :credit_card
 has_many :donations, include_nested_associations: true
 has_many :campaigns, include_nested_associations: true
end
