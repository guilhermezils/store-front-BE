class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :carts
  has_many :scores, through: :carts

end
