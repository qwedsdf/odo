class User < ApplicationRecord
    has_secure_password

    validates :password, confirmation: true, on: :create
    validates :name, {presence: true, uniqueness: true}
end
