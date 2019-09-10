class User < ApplicationRecord
    has_many :projects, dependent: :destroy
    has_many :skills, dependent: :destroy
    has_one :summary, dependent: :destroy
    has_one_attached :pic
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
