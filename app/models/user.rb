class User < ApplicationRecord
    validates :name, :email, :password, presence: true
    validates :name, uniqueness: true
    validates :email, uniqueness: true

    has_many :posts
    has_many :comments
end
