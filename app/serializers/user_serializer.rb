class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :password, :favorite_animal
end
