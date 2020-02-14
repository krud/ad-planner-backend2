class User < ApplicationRecord
    has_secure_password
    has_many :rooms, dependent: :destroy
    validates :username, uniqueness: { case_sensitive: false }
end
