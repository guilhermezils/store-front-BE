class CartSerializer < ActiveModel::Serializer
  attributes :id, :score

  belongs_to :user
  belongs_to :score

end
