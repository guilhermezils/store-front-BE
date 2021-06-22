class User < ApplicationRecord
    has_secure_password
    has_many :carts
    has_many :scores, through: :carts
end
