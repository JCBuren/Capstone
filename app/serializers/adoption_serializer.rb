class AdoptionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :pet
end
