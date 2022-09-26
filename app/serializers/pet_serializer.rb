class PetSerializer < ActiveModel::Serializer
  attributes :id, :animal_type, :name, :image_url, :breed, :age, :gender, :available, :adoption_fee
end
